#!/bin/python3
# -*- coding: utf-8 -*-

#这是使用法奥api进行路径规划的demo，可以直接运行
import threading
import rospy
from std_msgs.msg import UInt8MultiArray,Float32MultiArray
import time
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from match_motion import fr3
import math
import os
if __name__ == "__main__":
        distance = 13.0   # 距离(mm)
        speed    = 94.0     # 速度(%)
        force    = 10       # 力(N)

        match = fr3(mode = 0)
        # match.catcher(False)
        # 循环20次1
        x = input("请输入实验次数：")
        for i in range(int(x)):
                print("第"+str(i+1)+"次实验开始")

                
                
                match.catch_match()
                match.move_to_match(i,force)
                match.match_strike(distance,speed)
                match.drop_match()
        
                # 保存数据
                now = time.strftime('%m%d-%H%M%S', time.localtime())
                print("实验结束，正f在保存数据...请注意放置火柴！！！！")
                state = input("请输入实验状态：1.成功点燃 2.火柴无现象且未点燃 3.火柴有少量现象但未点燃 4.火柴有明显现象但未点燃 5.火柴杆断裂或划破磷纸 6.火柴磷头碎裂 7.实验失败不记录数据 0.exit \n")
                if state == '7':
                        # match.clean()
                        print("实验失败，数据不保存")
                        continue
                elif state == '6':
                        # reason = input("请输入现象描述：")
                        e = math.exp(speed/100-1)*match.matchwork
                        path = '/home/wangzy/data/match_data/force_data/d'+str(distance)+'-v'+str(speed)+'-f'+str(force)
                        if not os.path.exists(path):
                                os.makedirs(path)
                        tablename = path+'/'+str(state)+'-j'+f"{match.matchwork:0.2f}"+f"-e{e:0.2f}"+f"-skip{match.skip:0.2f}"+'-force_table_' + now + '.csv'
                        table = pd.merge(match.time_table,match.force_table,how='outer',on='index')
                        table = pd.merge(table,match.speed_table,how='outer',on='index')
                        table.to_csv(tablename)
                        print("力传感器数据已保存至",tablename)
                        print("第"+str(i+1)+"次实验结束")
                elif state == '0':
                        print("实验结束")
                        break
                else:
                        e = math.exp(speed/100-1)*match.matchwork
                        path = '/home/wangzy/data/match_data/force_data/d'+str(distance)+'-v'+str(speed)+'-f'+str(force)
                        if not os.path.exists(path):
                                os.makedirs(path)
                        tablename = path+'/'+str(state)+'-j'+f"{match.matchwork:0.2f}"+f"-e{e:0.2f}"+f"-skip{match.skip:0.2f}"+'-force_table_' + now + '.csv'
                        table = pd.merge(match.time_table,match.force_table,how='outer',on='index')
                        table = pd.merge(table,match.speed_table,how='outer',on='index')
                        # table = pd.concat([match.time_table,match.force_table,match.speed_table],axis=1,join='inner',ignore_index=False)
                        table.to_csv(tablename)
                        print("力传感器数据已保存至",tablename)
                        print("第"+str(i+1)+"次实验结束")
                
                # match.clean()
        print("实验结束，感谢使用，注意更换磷纸")

        

