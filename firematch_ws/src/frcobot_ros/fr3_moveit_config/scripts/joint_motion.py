#!/usr/bin/env python
# -*- coding: utf-8 -*-

##这是使用moveit进行路径规划的demo，可以直接运行
import rospy
import sys
import moveit_commander
import frrpc
from moveit_commander import MoveGroupCommander
from geometry_msgs.msg import Pose, PoseStamped
from copy import deepcopy
import pickle
from std_msgs.msg import UInt8MultiArray,Float32MultiArray
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import math
import numpy

class MoveItFkDemo:

    def __init__(self):
        # API for initializing move_group
        moveit_commander.roscpp_initialize(sys.argv)

        # Initialize the ROS node
        rospy.init_node('moveit_fk_demo', anonymous=True)
        rospy.Subscriber('/force_msg', Float32MultiArray, self.force_callback)
 
        # Initialize the arm group in the robotic arm that needs to be controlled by the move group
        self.arm = moveit_commander.MoveGroupCommander('fr3_arm')
        
        # Set the allowable error value of the robot arm movement
        self.arm.set_goal_joint_tolerance(0.001)

        # Set the maximum velocity and acceleration allowed
        self.arm.set_max_acceleration_scaling_factor(0.5)
        self.arm.set_max_velocity_scaling_factor(0.5)
        
        # 初始化变量
        self.robot = frrpc.RPC('192.168.58.2')
        self.force_data = [0.0,0.0,0.0,0.0,0.0,0.0]
        self.force_data_init = [0.0,0.0,0.0,0.0,0.0,0.0]
        
        self.n_pos = [0.0,0.0,-0.5,0.0,0.0,0.0]   # 笛卡尔空间位姿增量
        self.gain = [1.0,0.0,1.0,0.0,0.0,0.0]   # 位姿增量比例系数，仅在增量运动下生效，范围[0~1]；
        self.t = 0.008 # 指令周期，单位[s]，[0.001~0.016]；

    
    #控制夹爪开合,true是开,false是合
    def catcher(self,open = True):
        if open == False:
            self.robot.SetToolDO(0,1,0,0)    
            self.robot.SetToolDO(1,0,0,0)
        else:
            self.robot.SetToolDO(0,0,0,0)
            self.robot.SetToolDO(1,1,0,0)

    #笛卡尔路径规划
    def plan_cartesian_path(self,x,y,z,speed = 1):
        waypoints = []
        end_effector_link = self.arm.get_end_effector_link()
        start_pose = self.arm.get_current_pose(end_effector_link).pose
        wpose = deepcopy(start_pose)
        
        wpose.position.x += x
        wpose.position.y += y
        wpose.position.z += z

        waypoints.append(deepcopy(wpose))

        fraction = 0.0   #路径规划覆盖率
        maxtries = 100   #最大尝试规划次数
        attempts = 0     #已经尝试规划次数

        while fraction < 1.0 and attempts < maxtries:
            (robot_trajectory, fraction) = self.arm.compute_cartesian_path (
                                    waypoints,   # waypoint poses，路点列表
                                    0.01,        # eef_step，终端步进值
                                    0.0,         # jump_threshold，跳跃阈值
                                    False)        # avoid_collisions，避障规划
            # 尝试次数累加
            attempts += 1
            # 打印运动规划进程
            if attempts % 10 == 0:
                rospy.loginfo("Still trying after " + str(attempts) + " attempts...")

        # 如果路径规划成功（覆盖率100%）,则开始控制机械臂运动
        if fraction == 1.0:
            rospy.loginfo("Path computed successfully. Moving the arm.")
            self.scale_trajectory_speed(robot_trajectory, speed)
            self.arm.execute(robot_trajectory)
            rospy.loginfo("Path execution complete.")
        # 如果路径规划失败，则打印失败信息
        else:
            rospy.loginfo("Path planning failed with only " + str(fraction) + " success after " + str(maxtries) + " attempts.")  
        rospy.sleep(3)
        return robot_trajectory

    def set_arm_joint(self,j1 = 0.0,j2 = 0.0,j3 = 0.0,j4 = 0.0,j5 = 0.0,j6 = 0.0):
        joint_goal = self.arm.get_current_joint_values()
        joint_goal[0] = j1
        joint_goal[1] = j2
        joint_goal[2] = j3
        joint_goal[3] = j4
        joint_goal[4] = j5
        joint_goal[5] = j6
        # 设置机器臂当前的状态作为运动初始状态
        self.arm.set_start_state_to_current_state()
        # 设置机械臂终端运动的目标位姿
        self.arm.set_joint_value_target(joint_goal)
        # 规划运动路径
        plan_success,traj,planning_time,error_code=self.arm.plan()
        # 按照规划的运动路径控制机械臂运动
        self.arm.execute(traj)
        return traj
        # P1 = [j1,j2,j3,j4,j5,j6]
        # self.robot.MoveCart(P1,0,0,100.0,100.0,100.0,-1.0,-1)
    
    def scale_trajectory_speed(self, traj, scale):
       # Create a new trajectory object
       new_traj = RobotTrajectory()
       
       # Initialize the new trajectory to be the same as the input trajectory
       new_traj.joint_trajectory = traj.joint_trajectory
       
       # Get the number of joints involved
       n_joints = len(traj.joint_trajectory.joint_names)
       
       # Get the number of points on the trajectory
       n_points = len(traj.joint_trajectory.points)
        
       # Store the trajectory points
       points = list(traj.joint_trajectory.points)
       
       # Cycle through all points and joints and scale the time from start,
       # as well as joint speed and acceleration
       for i in range(n_points):
           point = JointTrajectoryPoint()
           
           # The joint positions are not scaled so pull them out first
           point.positions = traj.joint_trajectory.points[i].positions

           # Next, scale the time_from_start for this point
           point.time_from_start = traj.joint_trajectory.points[i].time_from_start / scale
           
           # Get the joint velocities for this point
           point.velocities = list(traj.joint_trajectory.points[i].velocities)
           
           # Get the joint accelerations for this point
           point.accelerations = list(traj.joint_trajectory.points[i].accelerations)
           
           # Scale the velocity and acceleration for each joint at this point
           for j in range(n_joints):
               point.velocities[j] = point.velocities[j] * scale
               point.accelerations[j] = point.accelerations[j] * scale * scale
        
           # Store the scaled trajectory point
           points[i] = point

       # Assign the modified points to the new trajectory
       new_traj.joint_trajectory.points = points

       # Return the new trajecotry
       return new_traj

    # 抓取火柴
    def catch_match(self):
        # 打开夹爪
        self.catcher(True)
        # catch_pos on the top 10cm
        self.set_arm_joint(0.987060010433197, -1.4898860454559326, 0.9489420056343079, -1.0425599813461304, -1.6040090322494507, -1.3178600072860718)
        # 下降10cm
        self.plan_cartesian_path(0,0,-0.1)
        # 闭合夹爪
        self.catcher(False)
        # 上升10cm
        self.plan_cartesian_path(0,0,0.1)
        
    # 移动到划火柴点
    def move_to_match(self):
        # 到刮取点
        # self.set_arm_joint(1.7628250122070312, -1.5163439512252808, 1.806952953338623, -1.8892040252685547, -1.583022952079773, -0.7513350248336792)
        J1=[165.574,-324.305,253.844,-179.272,-1.593,-126.007]
        P1=[100.970,-86.901,103.528,-108.246,-90.667,-43.043]
        
        eP1=[0.000,0.000,0.000,0.000]
        dP1=[0.000,0.000,0.000,0.000,0.000,0.000]
        self.robot.MoveL(P1,J1,0,0,30.0,180.0,100.0,-1.0,eP1,0,1 ,dP1)
        # 微调距离
        # self.plan_cartesian_path(0,0,-0.00022)
        self.force_data_init = self.force_data
        # for i in range(3):
        #     demo.robot.ServoCart(1, [0.0,0.0,5.0,0.0,0.0,0.0], self.gain, 0.0, 0.0, 0.016, 0.0, 0.0)
        #     rospy.sleep(0.5)
        while abs(self.force_data[2] - self.force_data_init[2]) <= 3:
            demo.robot.ServoCart(1, self.n_pos, self.gain, 0.0, 0.0, self.t, 0.0, 0.0)
            rospy.sleep(0.5)

    # 划火柴
    def match_strike(self):
        self.plan_cartesian_path(-0.05,0,0,speed=2) 

    # 丢弃火柴
    def drop_match(self):
        # 到丢弃点
        self.set_arm_joint(2.1722350120544434, -1.3045289516448975, 1.0362190008163452, -1.3067660331726074, -1.6021250486373901, -0.30969300866127014)
        # 打开夹爪
        self.catcher(True)

    # 力传感器回调函数
    def force_callback(self,force_msg):
        self.force_data = force_msg.data
        rospy.loginfo(force_msg.data)

    # 整体运动函数，只需要修改就这个就可以
    def main_motions(self):
        self.catch_match()
        # self.move_to_match()
        # self.match_strike()
        # self.drop_match()

if __name__ == "__main__":
    try:
        demo = MoveItFkDemo()
        # rospy.Subscriber('/force_msg', Float32MultiArray, demo.force_callback)
        # demo.main_motions()
        ret = demo.robot.GetActualJointPosDegree(1)
        ret2 = demo.robot.GetActualTCPPose(1)
        print(ret,ret2)
        print(x)
        # print(demo.robot.GetJointTorques(0) )
        # demo.set_arm_joint(1.7628250122070312, -1.5163439512252808, 1.806952953338623, -1.8892040252685547, -1.583022952079773, -0.7513350248336792)
        # for i in range(5):
        #     demo.robot.ServoCart(1, [0.0,0.0,8.0,0.0,0.0,0.0], demo.gain, 0.0, 0.0, demo.t, 0.0, 0.0)
        #     rospy.sleep(0.5)
        # rospy.spin()


        
        
        
 
            
    except rospy.ROSInterruptException:
        pass

