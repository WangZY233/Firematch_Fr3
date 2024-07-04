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
force_data = 0
start_time = time.time()
def force_callback(force_msg):
    global force_data
    force_data = force_msg.data
rospy.init_node('match_motion', anonymous=True)
rospy.Subscriber('/force_msg', Float32MultiArray, force_callback)   
plt.ion()
figure, ax = plt.subplots(2,3,figsize=(10,10))
time_list = []
force_list = [[],[],[],[],[],[]]
# line1, = ax.plot(time_list, force_list)
while(1):
    time_list.append(time.time()-start_time)
    force_list[0].append(force_data[0])
    force_list[1].append(force_data[1])
    force_list[2].append(force_data[2])
    force_list[3].append(force_data[3])
    force_list[4].append(force_data[4])
    force_list[5].append(force_data[5])
    if (len(time_list) > 10):
        time_list.remove(time_list[0])
        force_list[0].remove(force_list[0][0])
        force_list[1].remove(force_list[1][0])
        force_list[2].remove(force_list[2][0])
        force_list[3].remove(force_list[3][0])
        force_list[4].remove(force_list[4][0])
        force_list[5].remove(force_list[5][0])
        print(1)
    ax[0][0].plot(time_list,force_list[0],linestyle = '-', # 折线类型
                linewidth = 2, # 折线宽度
                color = 'steelblue', # 折线颜色
                marker = 'o', # 点的形状
                markersize = 2, # 点的大小
                markeredgecolor='black', # 点的边框色
                label = 'fx')
    ax[0][0].set_title("fx")
    ax[0][1].plot(time_list,force_list[1],linestyle = '-', # 折线类型
            linewidth = 2, # 折线宽度
            color = 'r', # 折线颜色
            marker = 'o', # 点的形状
            markersize = 2, # 点的大小
            markeredgecolor='black', # 点的边框色
            label = 'fy')
    ax[0][1].set_title("fy")
    ax[0][2].plot(time_list,force_list[2],linestyle = '-', # 折线类型
            linewidth = 2, # 折线宽度
            color = 'g', # 折线颜色
            marker = 'o', # 点的形状
            markersize = 2, # 点的大小
            markeredgecolor='black', # 点的边框色
            label = 'fz')
    ax[0][2].set_title("fz")
    ax[1][0].plot(time_list,force_list[3],linestyle = '-', # 折线类型
            linewidth = 2, # 折线宽度
            color = 'b', # 折线颜色
            marker = 'o', # 点的形状
            markersize = 2, # 点的大小
            markeredgecolor='black', # 点的边框色
            )
    ax[1][0].set_title("mx")
    ax[1][1].plot(time_list,force_list[4],linestyle = '-', # 折线类型
            linewidth = 2, # 折线宽度
            color = 'yellow', # 折线颜色
            marker = 'o', # 点的形状
            markersize = 2, # 点的大小
            markeredgecolor='black', # 点的边框色
            )
    ax[1][1].set_title("mx")
    ax[1][2].plot(time_list,force_list[5],linestyle = '-', # 折线类型
            linewidth = 2, # 折线宽度
            color = 'orange', # 折线颜色
            marker = 'o', # 点的形状
            markersize = 2, # 点的大小
            markeredgecolor='black', # 点的边框色
            )
    ax[1][2].set_title("mz")
    figure.canvas.draw()
    figure.canvas.flush_events()
    time.sleep(0.1)

