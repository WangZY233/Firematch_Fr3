#!/bin/python3
# -*- coding: utf-8 -*-

#这是使用法奥api进行路径规划的demo，可以直接运行
import rospy
import sys
import frrpc
from std_msgs.msg import UInt8MultiArray,Float32MultiArray,String
import time
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import socket
from moveit_msgs.msg import joint_pos
import matplotlib.pyplot as plt
class fr3:

    def __init__(self,mode):

        # Initialize the ROS node
        rospy.init_node('match_motion', anonymous=True)
        rospy.Subscriber('/force_msg', Float32MultiArray, self.force_callback)
        rospy.Subscriber('/joint_pos', joint_pos, self.joint_callback)
        
        # 初始化变量
        self.mode = mode # 0: 实验模式 1: 验证模式
        self.robot = frrpc.RPC('192.168.58.2')
        self.force_data = [0.0,0.0,0.0,0.0,0.0,0.0]
        
        self.speed = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]
        self.force_data_init = [0.0,0.0,0.0,0.0,0.0,0.0]
        self.timeinit = time.time()
        self.is_recording = False
        self.force_table = pd.DataFrame(columns=['index','Fx','Fy','Fz','Mx','My','Mz'])
        self.force_table_plt = pd.DataFrame(columns=['index','Fx','Fy','Fz','Mx','My','Mz'])
        self.speed_table = pd.DataFrame(columns=['index',"J1", "J2", "J3", "J4", "J5", "J6", "X_POSE", "Y_POSE", "Z_POSE", "RX_POSE", 'RY_POSE', "RZ_POSE"])
        self.time_table = pd.DataFrame(columns=['index','time'])
        self.time_table_plt = pd.DataFrame(columns=['index','time'])
        self.index = 0
        self.flag1 = False
        self.RV = []
        self.matchwork = 0.0
        self.i1 = 0
        self.skip = 0

        ip = '192.168.58.2'
        self.Con_SOCKET = socket.socket()            
        error = self.Con_SOCKET.connect_ex((ip, 8080))
        if error == 0:
            print("机器人socket连接成功")
        else:
            print("机器人socket连接失败,退出程序")
            self.Con_SOCKET.close()
            sys.exit()
        
        # 自检力传感器
        print("正在检查力传感器连接...")
        rospy.sleep(0.5)
        if self.force_data == [0.0,0.0,0.0,0.0,0.0,0.0]:
            print("无法获取力传感器数据，程序退出")
            print("请检查力传感器连接,是否开启力传感器节点：rosrun force_msg force_msg_node ")
            #退出程序
            sys.exit()
        else:
            print("力传感器连接成功，程序正常运行")
            
        # # # 添加标题和坐标轴标签
        # plt.title('Force dataS')
        # plt.xlabel('index')
        # plt.ylabel('F/N')

        # # 剔除图框上边界和右边界的刻度
        # plt.tick_params(top = 'off', right = 'off')

        # # 获取图的坐标信息
        # ax = plt.gca()

        # # 显示图例
        # plt.legend()
        # # 显示图形
        # plt.show()

    #控制夹爪开合,true是开,false是合
    def catcher(self,open = True):
        if open == False:
            self.robot.SetToolDO(0,1,0,0)    
            self.robot.SetToolDO(1,0,0,0)
        else:
            self.robot.SetToolDO(0,0,0,0)
            self.robot.SetToolDO(1,1,0,0)

    def joint_callback(self,receive_str):
        self.RV = receive_str.RV
        self.speed = receive_str.RV[0:12]
        # print(self.RV)

    # 力传感器回调函数，记录力传感器数据
    def force_callback(self,force_msg):
        self.force_data = force_msg.data
        # print(self.force_data)
        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.Fx*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'steelblue', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fx') # 添加标签

        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.Fy*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'r', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fy') # 添加标签
        
        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.Fz, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'g', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fz') # 添加标签
        
        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.Mx*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'b', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'mx') # 添加标签
        
        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.My*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'yellow', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'my') # 添加标签
        
        # plt.plot(self.force_table.index, # x轴数据
        #         self.force_table.Mz*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'orange', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'mz') # 添加标签
        
        
    
    # 记录数据
    def record_data(self):
        timenow = [0.0]
        timenow[0] = time.time()-self.timeinit
        force_pddata = pd.Series(self.force_data,index=['Fx','Fy','Fz','Mx','My','Mz'])
        index_data = pd.Series(self.index,index=['index'])
        speed_pddata = pd.Series(self.speed,index=["J1", "J2", "J3", "J4", "J5", "J6", "X_POSE", "Y_POSE", "Z_POSE", "RX_POSE", 'RY_POSE', "RZ_POSE"])
        
        # 输出TCP及关节位置
        if self.is_recording == True :
            self.index = self.index + 1

            index_data_table = index_data.to_frame().T
            force_data_table = force_pddata.to_frame().T
            force_data_table = pd.concat([index_data_table,force_data_table],axis=1)
            self.force_table = pd.concat([self.force_table,force_data_table],axis=0,ignore_index=True)
            self.force_table_plt = pd.concat([self.force_table_plt,force_data_table],axis=0,ignore_index=True)
            if self.i1 == 0: 
                self.i1 = self.i1+1
            else:
                # print(self.speed[6])
                # print(self.speed_table.iloc[-1,7]) 
                work = -(float(self.speed[6])-float(self.speed_table.iloc[-1,7]))*(self.force_data[2]- self.force_data_init[2])
                if work > 0:
                    # work = -(float(self.speed[6])-float(self.speed_table.iloc[-1,7]))*(self.force_data[2]- self.force_data_init[2])
                    self.matchwork = self.matchwork + work
                    if work >=30:
                        self.skip = work
                # self.matchwork = self.matchwork/1000.0
            print("matchwork:",self.matchwork)

            time_pddata = pd.Series(timenow,index=['time'])
            time_data_table = time_pddata.to_frame().T
            time_data_table = pd.concat([index_data_table,time_data_table],axis=1)
            self.time_table = pd.concat([self.time_table,time_data_table],axis=0,ignore_index=True)
            self.time_table_plt = pd.concat([self.time_table,time_data_table],axis=0,ignore_index=True)
            
            speed_data_table = speed_pddata.to_frame().T
            speed_data_table = pd.concat([index_data_table,speed_data_table],axis=1)
            self.speed_table = pd.concat([self.speed_table,speed_data_table],axis=0,ignore_index=True)
            
            
    
    def flag(self,a):
        self.flag1 = True
        timenow = [a]
        self.index = self.index + 1
        index_data = pd.Series(self.index,index=['index'])
        index_data_table = index_data.to_frame().T
        time_pddata = pd.Series(timenow,index=['time'])
        time_data_table = time_pddata.to_frame().T
        time_data_table = pd.concat([index_data_table,time_data_table],axis=1)
        self.time_table = pd.concat([self.time_table,time_data_table],axis=0,ignore_index=True)
        self.flag1 = False

    # 使用微分移动控制机械臂运动
    def xyzmove(self,direction,distance,speed = 0.1):
        if direction == 'x' and distance > 0:
            n_pos = [0.2,0.0,0.0,0.0,0.0,0.0]   
        elif direction == 'y' and distance > 0:
            n_pos = [0.0,0.2,0.0,0.0,0.0,0.0]
        elif direction == 'z' and distance > 0:
            n_pos = [0.0,0.0,0.2,0.0,0.0,0.0]
        elif direction == 'x' and distance < 0:
            n_pos = [-0.2,0.0,0.0,0.0,0.0,0.0]
        elif direction == 'y' and distance < 0:
            n_pos = [0.0,-0.2,0.0,0.0,0.0,0.0]
        elif direction == 'z' and distance < 0:
            n_pos = [0.0,0.0,-0.2,0.0,0.0,0.0]
        elif direction == 'xh' and distance > 0:
            n_pos = [2.0,0.0,0.0,0.0,0.0,0.0]
        elif direction == 'zf' and distance < 0:
            n_pos = [0.0,0.0,-0.05,0.0,0.0,0.0]  
        
        gain = [1.0,1.0,1.0,0.0,0.0,0.0]   # 位姿增量比例系数，仅在增量运动下生效，范围[0~1]；
        t = 0.001 # 指令周期，单位[s]，[0.001~0.016]；      
        success = False    

        for i in range(abs(distance)):
            # 使用sdk的方式控制机械臂运动
            self.robot.ServoCart(1, n_pos, gain, 0.0, 0.0, t, 0.0, 0.0)
        return success

    def MoveL(self,x = 0.000,y = 0.000,z = 0.000, movespeed = 100.0):
        eP1=[0.000,0.000,0.000,0.000]
        dP1=[x,y,z,0.000,0.000,0.000]
        self.robot.MoveL(self.robot.GetActualJointPosDegree(0)[1:7],self.robot.GetActualTCPPose(0)[1:7],0,0,movespeed,180.0,100.0,-1.0,eP1,0,1 ,dP1)

    def dotmove(self,joint_angle,position,speed = 100.0):  
        #利用sdk的方式控制机械臂运动
        eP1=[0.000,0.000,0.000,0.000]
        dP1=[0.000,0.000,0.000,0.000,0.000,0.000]
        x = self.robot.MoveL(joint_angle,position,0,0,speed,180.0,100.0,-1.0,eP1,0,0,dP1)

    def get_state(self):
        JointPos = self.robot.GetActualJointPosDegree(1)
        CartesianPose = self.robot.GetActualTCPPose(1)
        print("JointPos:",JointPos)
        print("CartesianPose:",CartesianPose)
    
    # 抓取火柴
    def catch_match(self):
        # 打开夹爪
        self.catcher(True)
        rospy.sleep(1)
        # catch_pos on the top 10cm
        J1=[56.56022780012376, -85.33809850711634, 54.43127320544554, -59.7358205058787, -91.87333210860149, -75.5430799427599]
        P1=[-100.4511566162109, -331.2756042480468, 443.5514831542968, 178.3462677001953, -1.08969461917877, -137.8912506103515]
        self.dotmove(J1,P1,100.0)
        J2 = [55.88647219214109, -92.18812848081683, 87.91303275835396, -87.2127359220297, -91.41081857209159, -76.92496422493812]
        P2 = [-104.4608993530273, -331.6921081542968, 340.4016723632812, 178.962661743164, -1.768772959709167, -137.1906585693359]
        # 下降10cm
        # self.xyzmove(direction='z',distance=-500,speed=5)
        self.dotmove(J2,P2,50.0)
        self.xyzmove(direction='z',distance=-55,speed=20)
        self.xyzmove(direction='y',distance=5,speed=15)

        # 等待动作是否完成
        while (1):
            if (self.RV[12] == '1'):
                break
            else:
                continue
        
        # 闭合夹爪
        self.robot.WaitMs(2000)
        rospy.sleep(2)
        self.catcher(False)

        rospy.sleep(3)
        # 上升10cm
        # self.xyzmove(direction='z',distance=500,speed=15)
        self.dotmove(J1,P1,50.0)

        while (1):
            if (self.RV[12] == '1'):
                break
            else:
                continue

    # 移动到划火柴点
    def move_to_match(self,i,force):
        # 到刮取点
        J1=[92.91496654548267, -89.23182723545793, 105.2794805847772, -106.4509929996906, -91.06969852258663, -40.04135887221534]
        P1=[117.1443634033203, -331.5746765136718, 254.3671722412109, 179.620391845703, -1.077967643737793, -137.0436401367187]
        self.dotmove(J1,P1,100.0)
        if i <= 20:
            self.xyzmove(direction='y',distance=-1*25*i,speed=5)
        else:
            self.xyzmove(direction='y',distance=(25*(i-10)),speed=5)
        self.xyzmove(direction='z',distance=-85,speed=10)
        rospy.sleep(3)
        #记录划火柴前的力传感器数据
        self.force_data_init = self.force_data
        # 开始记录数据
        self.is_recording = True
        self.timeinit = time.time()
        # 微调距离
        while abs(self.force_data[2] - self.force_data_init[2]) <= force:
            self.MoveL(z=-0.05)
            # 等待动作是否完成
            while (1):
                if (self.RV[12] == '1'):
                    break
                else:
                    continue
        
        print("force adjust success")
        # rospy.sleep(1)

    
    # 划火柴
    def match_strike(self,distance,speed):
        # self.xyzmove(direction='xh',distance=distance,speed=int(speed))
        self.flag(0.0)
        if self.mode == 0:  # 实验模式
            eP1=[0.000,0.000,0.000,0.000]
            dP1=[distance,0.000,0.000,0.000,0.000,0.000]
            self.robot.MoveL(self.robot.GetActualJointPosDegree(0)[1:7],self.robot.GetActualTCPPose(0)[1:7],0,0,speed,180.0,100.0,1.0,eP1,0,1 ,dP1)
        elif self.mode == 1:    # 验证模式
            self.MoveL(x=distance,movespeed=speed)
        # 等待动作是否完成
        rospy.sleep(0.1)
        while (1):
            
            if (self.RV[12] == '1'):
                break
            else:
                continue
        self.flag(0.0)
        rospy.sleep(1)
        
        self.is_recording = False
        

    # 放下火柴
    def drop_match(self):
        # 上升10cm
        J = [99.51503036045793, -101.182559173886, 85.35746055074257, -74.94394434560644, -89.14350150835396, -32.0755095529084]
        P = [148.3448638916015, -258.97509765625, 381.5212097167968, -178.8936920166015, 0.31740033626556396, -138.4008636474609]
        self.dotmove(J,P,100.0)
        # self.xyzmove(direction='z',distance=500,speed=15)

        J1=[125.0305054919554, -74.14792504641089, 56.1366559019183, -72.40686397741337, -91.7884871983292, -12.97605004641089]
        P1=[314.8483581542968, -276.8782348632812, 384.3578796386718, -179.9937896728515, -1.83652663230896, -132.0000762939453]
        self.dotmove(J1,P1,100.0)
        while (1): 
            
            if (self.RV[12] == '1'):
                self.catcher(True)
                break
            else:
                continue
            
    # 清除数据
    def clean(self):
        self.force_table = self.force_table.drop(self.force_table.index,inplace=True)
        self.force_table_plt = self.force_table_plt.drop(self.force_table_plt.index,inplace=True)
        self.speed_table = self.speed_table.drop(self.speed_table.index,inplace=True)
        self.time_table = self.time_table.drop(self.time_table.index,inplace=True)
        self.time_table_plt = self.time_table_plt.drop(self.time_table_plt.index,inplace=True)
        self.matchwork = 0.0
        self.i1 = 0
        self.skip = 0









