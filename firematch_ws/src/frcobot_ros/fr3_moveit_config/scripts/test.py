#!/usr/bin/env python
# -*- coding: utf-8 -*-
import socket
import time
import frrpc
ip = '192.168.58.2'
robot = frrpc.RPC('192.168.58.2')
# ret = robot.GetDefaultTransVel()  # 获取机器人当前速度
# print(ret)
a = robot.GetActualTCPSpeed()

print(time.time().type)
time.sleep(0.1)
print(time.time())
Con_SOCKET = socket.socket()
Con_SOCKET.connect_ex((ip, 8080))
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
n_pos = [0.0,0.0,-0.5,0.0,0.0,0.0]
gain = [1.0,1.0,1.0,0.0,0.0,0.0]
t = 0.001 # 指令周期，单位[s]，[0.001~0.016]；

movedata = 'GetActualTCPCompositeSpeed()'

move = '/f/bIII52III341III'+str(len(movedata))+'III'+movedata+'III/b/f'
print(move)
Con_SOCKET.send(move.encode('UTF-8'))
RCV = Con_SOCKET.recv(1024)
print(RCV)

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