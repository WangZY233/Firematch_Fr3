#!/bin/python3
# -*- coding: utf-8 -*-
import rospy
from std_msgs.msg import String
import socket
import sys
import struct
from moveit_msgs.msg import joint_pos,connect_unity

def talker():
    pub = rospy.Publisher('joint_pos', joint_pos, queue_size=0)
    rospy.init_node('joint_publisher', anonymous=True)
    Con_SOCKETINFO = socket.socket()
    errorinfo = Con_SOCKETINFO.connect_ex(('192.168.58.2', 8083))
    if errorinfo == 0:
        print("机器人socketinfo 8083端口连接成功")
    else:
        print("机器人socketinfo 8083端口连接失败,退出程序")
        Con_SOCKETINFO.close()
        sys.exit()

    while not rospy.is_shutdown():
        RV = Con_SOCKETINFO.recv(1024)
        POSE_name = ["J1", "J2", "J3", "J4", "J5", "J6", "X_POSE", "Y_POSE", "Z_POSE", "RX_POSE", 'RY_POSE', "RZ_POSE"]
        infosend = ["", "", "", "", "", "", "", "", "", "", '', "",'']
        for i in range(len(POSE_name)):
            info = str(struct.unpack("d", RV[(i + 1) * 8:(i + 2) * 8]))
            info = info.strip("(").strip(")").strip(",")
            # print(info)
            infosend[i] = info 
        infosend[len(POSE_name)] = str(int.from_bytes(RV[234:237], byteorder="little"))
        pub_string = joint_pos()
        pub_string.RV = infosend
        pub.publish(pub_string)
        
        
 
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass






