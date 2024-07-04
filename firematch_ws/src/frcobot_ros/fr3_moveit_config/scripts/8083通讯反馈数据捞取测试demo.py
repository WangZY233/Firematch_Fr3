import struct
import socket

def socket_con():
    # 连接端口获取信息
    Con_SOCKET = socket.socket()
    error = Con_SOCKET.connect_ex(('192.168.58.2', 8083))
    print(error)
    RV = Con_SOCKET.recv(1024)
    # 创建新的列保存字节流内容-16进制
    RVV = []
    for i in range(len(RV)):
        RVV.append(hex(RV[i]))
    print("字节流数据：" + str(RV))
    print("hex类型数组：" + str(RVV))
    print("字节流长度：" + str(len(RV)))
    print("数据内容长度：" + str(RV[3]))
    print(RV[5])
    print("机器人状态:" + str(RV[5])+":5")
    print("机器人错误代码:" + str(RV[6])+":6")
    print("机器人运行模式:" + str(RV[7])+":7")
    # 输出TCP及关节位置
    POSE_name = ["J1", "J2", "J3", "J4", "J5", "J6", "X_POSE", "Y_POSE", "Z_POSE", "RX_POSE", 'RY_POSE', "RZ_POSE"]
    for i in range(len(POSE_name)):
        print(POSE_name[i] + ": " + str(struct.unpack("d", RV[(i + 1) * 8:(i + 2) * 8]))+str((i + 1) * 8)+" : " + str((i + 2) * 8))
    print("Tool Number:" + str(int.from_bytes(RV[104:108], byteorder="little")))
    # 输出关节扭矩
    TOR_name2 = ["J1 tor", "J2 tor", "J3 tor", "J4 tor", "J5 tor", "J6 tor"]
    for i in range(len(TOR_name2)):
        print(TOR_name2[i] + ": " + str(struct.unpack("d", RV[i * 8 + 108:(i + 1) * 8 + 108]))+str(i * 8 + 108)+" : " + str((i + 1) * 8 + 108))
    # 输出当前运行的程序名称
    print("program_name :" + RV[156:175].decode("UTF8").strip("\x00"))
    # 输出当前运行的程序总行数(暂未实装)
    print("prog_total_line :" + str(RV[176]))
    # 程序当前运行行
    print("prog_cur_line :" + str(RV[177]))
    # 机器人CO状态
    print("Robot_CO :" + reverse_IO(str(bin(RV[178]).strip("0b"))))
    # 机器人DO状态
    print("Robot_DO :" + reverse_IO(str(bin(RV[179]).strip("0b"))))
    # 机器人末端DO状态
    print("Robot_END_DO :" + reverse_TIO((str(bin(RV[180]).strip("0b")))))
    # 机器人Ci状态
    print("Robot_Ci :" + reverse_IO(str(bin(RV[181]).strip("0b"))))
    # 机器人Di状态
    print("Robot_Di :" + reverse_IO(str(bin(RV[182]).strip("0b"))))
    # 机器人末端Di状态
    print("Robot_END_Di :" + reverse_TIO((str(bin(RV[183]).strip("0b")))))
    # 获取力传感器反馈数值
    FT_name3 = ["FT-X", "FT-Y", "FT-Z", "FT-RX", "FT-RY", "FT-RZ"]
    for i in range(len(FT_name3)):
        print(FT_name3[i] + ": " + str(struct.unpack("d", RV[i * 8 + 184:(i + 1) * 8 + 184])))
    # 获取力传感器状态
    print("FT_ActStatus :" + str(RV[231]))
    # 获取急停状态
    print("EmergencyStop :" + str(RV[232]))
    # 获取机器人到位信息
    print("robot_motion_done :" + str(int.from_bytes(RV[234:237], byteorder="little")))
    # 获取机器人夹爪到位信息
    print("gripper_motion_done :" + str(RV[238]))
    Con_SOCKET.close()


# IO分割方法
def reverse_IO(str1):
    str2 = ""
    for i in range(len(str1)):
        x = str1[len(str1) - 1 - i]
        str2 = str2 + "channel" + str(i) + " : " + x + ", "
    return str2


# 末端IO分割方法
def reverse_TIO(str1):
    str2 = ""
    for i in range(len(str1)):
        if i > 2:
            x = str1[len(str1) - 3 - i]
            str2 = str2 + "channel" + str(i - 2) + " : " + x + ", "
    return str2


socket_con()
