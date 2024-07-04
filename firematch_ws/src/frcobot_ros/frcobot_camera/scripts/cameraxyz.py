import cv2
import numpy as np
import math



mtx = [[4.71351885e+03,0.00000000e+00,2.79895752e+02],[0.00000000e+00,2.47284461e+03,3.16077273e+02],[0.00000000e+00,0.00000000e+00,1.00000000e+00]]
mtx = np.float32(mtx)
dist =  [[ 2.89698430e+01],
[-1.73666891e+04],
[ 1.15226033e+00],
[-4.02359831e-01],
[-3.62011355e+01]]
dist = np.float32(dist)
objp = np.zeros((6 * 4, 3), np.float32)
objp[:, :2] = np.mgrid[0:6, 0:4].T.reshape(-1, 2)  # 将世界坐标系建在标定板上，所有点的Z坐标全部为0，所以只需要赋值x和y
objp = 2.5 * objp   # 打印棋盘格一格的边长为2.6cm
Camera_intrinsic = {"mtx": mtx,"dist": dist,}
obj_points = objp   # 存储3D点
img_points = []     # 存储2D点

#从摄像头获取视频图像
camera = cv2.VideoCapture(2)

while True:
    _, frame = camera.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    size = gray.shape[::-1]
    ret, corners = cv2.findChessboardCorners(gray, (6, 4), None)
    if ret:    # 画面中有棋盘格
        img_points = np.array(corners)
        cv2.drawChessboardCorners(frame, (6, 4), corners, ret)
        # rvec: 旋转向量 tvec: 平移向量
        _, rvec, tvec = cv2.solvePnP(obj_points, img_points, Camera_intrinsic["mtx"], Camera_intrinsic["dist"])    # 解算位姿
        distance = math.sqrt(tvec[0]**2+tvec[1]**2+tvec[2]**2)  # 计算距离
        rvec_matrix = cv2.Rodrigues(rvec)[0]    # 旋转向量->旋转矩阵
        proj_matrix = np.hstack((rvec_matrix, tvec))    # hstack: 水平合并
        eulerAngles = cv2.decomposeProjectionMatrix(proj_matrix)[6]  # 欧拉角
        pitch, yaw, roll = eulerAngles[0], eulerAngles[1], eulerAngles[2]
        cv2.putText(frame, "x:%.2fcm,y:%.2fcm,z:%.2fcm,dist: %.2fcm, yaw: %.2f, pitch: %.2f, roll: %.2f" % (tvec[0],tvec[1],tvec[2],distance, yaw, pitch, roll), (5, frame.shape[0] - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
        cv2.imshow('frame', frame)
        if cv2.waitKey(1) & 0xFF == 27: # 按ESC键退出
            break
    else:   # 画面中没有棋盘格
        cv2.putText(frame, "Unable to Detect Chessboard", (20, frame.shape[0] - 20), cv2.FONT_HERSHEY_SIMPLEX, 1.3, (0, 0, 255), 3) 
        cv2.imshow('frame', frame)
        if cv2.waitKey(1) & 0xFF == 27: # 按ESC键退出
            break
cv2.destroyAllWindows()