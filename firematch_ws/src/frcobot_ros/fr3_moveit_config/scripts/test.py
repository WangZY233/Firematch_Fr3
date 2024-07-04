#!/usr/bin/env python
# -*- coding: utf-8 -*-
import socket
import time
import frrpc
ip = '192.168.58.2'
robot = frrpc.RPC('192.168.58.2')
# ret = robot.GetDefaultTransVel()  # 获取机器人当前速度
# print(ret)
# 手动模式字符串:/f/bIII52III303III7IIIMode(1)III/b/f
OPmode = '/f/bIII52III303III'+str(len('Mode(1)'))+'IIIMode(1)III/b/f'
# 自动模式字符串:/f/bIII51III303III7IIIMode(0)III/b/f
Automode = '/f/bIII51III303III7IIIMode(0)III/b/f'
# 切换主程序字符串:/f/bIII51III105III16III/fruser/main.luaIII/b/f
mainword = '/f/bIII53III105III15III/fruser/123.luaIII/b/f'
# 启动程序字符串：/f/bIII52III101III5IIISTARTIII/b/f
startword = '/f/bIII54III101III5IIISTARTIII/b/f'
# Con_SOCKET.send(OPmode.encode('UTF-8'))
# time.sleep(1)
# RCV = Con_SOCKET.recv(1024)
# print(RCV)
eP1=[0.000,0.000,0.000,0.000]
dP1=[25.000,0.000,0.000,0.000,0.000,0.000]
for i in range(10):
    J1 = robot.GetActualJointPosDegree(0)[1:7]
    print(J1)
    P1 = robot.GetActualTCPPose(0)[1:7]
print(P1)
robot.MoveL(J1,P1,0,0,100.0,180.0,100.0,-1.0,eP1,0,1,dP1)

# waitms = 'WaitMs('+str(int(100))+')'
# wait = '/f/bIII52III304III'+str(len(waitms))+'III'+waitms+'III/b/f'
# print(wait)
# Con_SOCKET.send(wait.encode('UTF-8'))

# move = '/f/bIII52III341III'+str(len(movedata))+'III'+movedata+'III/b/f'
# print(move)
# Con_SOCKET.send(move.encode('UTF-8'))

# move = '/f/bIII52III341III'+str(len(movedata))+'III'+movedata+'III/b/f'
# print(move)
# Con_SOCKET.send(move.encode('UTF-8'))
# RCV = Con_SOCKET.recv(1024)
# print(RCV)