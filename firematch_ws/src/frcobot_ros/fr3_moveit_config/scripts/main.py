#!/usr/bin/env python
# -*- coding: utf-8 -*-

#这是使用法奥api进行路径规划的demo，可以直接运行
import rospy
from std_msgs.msg import UInt8MultiArray,Float32MultiArray
import time
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from match_motion import match_motion
import os

    
if __name__ == "__main__":
        distance = 20   # 距离(mm)
        speed = 0.15      # 速度(m/s)
        force = 0.1    # 力(N)

        match = match_motion()
        # 循环20次1
        x = input("请输入实验次数：")
        for i in range(int(x)):
                print("第"+str(i+1)+"次实验开始")
                match.catch_match()
                match.move_to_match(i,force)
                match.match_strike(distance,2/speed)
                match.drop_match()
        
                # 保存数据
                now = time.strftime('%m%d-%H%M%S', time.localtime())
                print("实验结束，正在保存数据...请注意放置火柴！！！！")
                state = input("请输入实验状态：1.成功点燃 2.火柴无现象且未点燃 3.火柴有少量现象但未点燃 4.火柴有明显现象但未点燃 5.火柴杆断裂或划破磷纸 6.其他现象 7.实验失败不记录数据 0.exit \n")
                if state == '7':
                        print("实验失败，数据不保存")
                        continue
                elif state == '6':
                        reason = input("请输入现象描述：")
                        path = '/home/wangzy/data/match_data/force_data/d'+str(distance)+'-v'+str(speed)+'-f'+str(force)
                        if not os.path.exists(path):
                                os.makedirs(path)
                        tablename = path+'/'+str(state)+'-'+reason+'-force_table_' + now + '.csv'
                        table = pd.concat([match.time_table,match.force_table,match.speed_table],axis=1)
                        table.to_csv(tablename)
                        print("力传感器数据已保存至",tablename)
                        print("第"+str(i+1)+"次实验结束")
                elif state == '0':
                        print("实验结束")
                        break
                else:
                        path = '/home/wangzy/data/match_data/force_data/d'+str(distance)+'-v'+str(speed)+'-f'+str(force)
                        if not os.path.exists(path):
                                os.makedirs(path)
                        tablename = path+'/'+str(state)+'-force_table_' + now + '.csv'
                        table = pd.concat([match.time_table,match.force_table,match.speed_table],axis=1)
                        table.to_csv(tablename)
                        print("力传感器数据已保存至",tablename)
                        print("第"+str(i+1)+"次实验结束")
                
                match.clean()
        print("实验结束，感谢使用，注意更换磷纸")
                # rospy.spin()

        match.Con_SOCKET.close()
        match.Con_SOCKETINFO.close()
        # plt.plot(match.force_table.index, # x轴数据
        #         match.force_table.fx*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'steelblue', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fx') # 添加标签

        # plt.plot(match.force_table.index, # x轴数据
        #         match.force_table.fy*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'r', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fy') # 添加标签
        
        # plt.plot(match.force_table.index, # x轴数据
        #         match.force_table.fz, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'g', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'fz') # 添加标签
        
        # plt.plot(match.force_table.index, # x轴数据
        #         match.force_table.mx*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'b', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'mx') # 添加标签
        
        # plt.plot(match.force_table.index, # x轴数据
        #         match.force_table.my*5, # y轴数据
        #         linestyle = '-', # 折线类型
        #         linewidth = 2, # 折线宽度
        #         color = 'yellow', # 折线颜色
        #         marker = 'o', # 点的形状
        #         markersize = 2, # 点的大小
        #         markeredgecolor='black', # 点的边框色
        #         label = 'my') # 添加标签
        
        # plt.plot(match.force_table.index, # x轴数据
                # match.force_table.mz*5, # y轴数据
                # linestyle = '-', # 折线类型
                # linewidth = 2, # 折线宽度
                # color = 'orange', # 折线颜色
                # marker = 'o', # 点的形状
                # markersize = 2, # 点的大小
                # markeredgecolor='black', # 点的边框色
                # label = 'mz') # 添加标签

        # # 添加标题和坐标轴标签
        # plt.title('Force dataS')
        # plt.xlabel('index')
        # plt.ylabel('F/N')

        # # 剔除图框上边界和右边界的刻度
        # plt.tick_params(top = 'off', right = 'off')

        # # 获取图的坐标信息
        # ax = plt.gca()

        # 显示图例
        # plt.legend()
        # 显示图形
        # plt.show()

        

