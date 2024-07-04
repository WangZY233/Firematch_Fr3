# Firematch_FR3

## 介绍
该项目设计了一套自动划火柴的机械臂数据采集系统，基于法奥FR3机械臂+六维力传感器

可以自动记录划火柴过程中的力传感数据、时间和机械臂各关节角度、速度等参数

用于火柴头感度分析

### 实验过程展示
![划火柴](fig/pal_torch.gif "划火柴")

## 环境使用说明
Ubuntu 20.04
Ros noetic
法奥python SDK


## 安装教程
初始化：
```python
# 开启ros节点
   roscore
# 开启usb端口
   sudo chmod 777 /dev/ttyUSB0
   ```
启动机械臂开始采集数据

方法一：rosrun单个程序运行
```python
# 开启力传感数据采集
   rosrun force_msg force_msg_node 
# 启动程序
   rosrun fr3_moveit_config main.py
```

方法二：roslaunch一键运行
```python
roslaunch fr3_moveit_config fr3_match.launch 
```

## 参与贡献

1.  @WangZYPrince inonoway@163.com

