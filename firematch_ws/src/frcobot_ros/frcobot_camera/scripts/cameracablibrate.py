import cv2
import numpy as np

# 读取相机内参数（相机矩阵和畸变系数），这些参数通常是通过相机标定获得的
camera_matrix = np.array([[452.923, 0, 329.395],
                           [0, 452.923, 239.895],
                           [0, 0, 1]])
dist_coeffs = np.array([0, 0, 0, 0, 0])
dist_coeffs = np.float32(dist_coeffs)


# 设置标定板的尺寸，这是标定板上每个格点之间的距离
board_width = 4 # 例如，标定板上有7个格点
board_height = 6
square_size = 25.0  # 格点之间的距离（毫米）

# 构建标定板的3D坐标
object_points = np.zeros((board_width * board_height, 3), np.float32)
object_points[:, :2] = np.mgrid[0:board_width, 0:board_height].T.reshape(-1, 2) * square_size

# 创建空列表来存储检测到的角点和相应的图像坐标
image_points = []
object_points_list = []

# 打开相机
cap = cv2.VideoCapture(2)  # 0代表默认相机

while True:
    ret, frame = cap.read()
    # frame.resize(640, 480)

    # 在图像中查找标定板的角点
    ret, corners = cv2.findChessboardCorners(frame, (board_width, board_height), None)
    cv2.imshow('Chessboard', frame)

    if ret:
        # 如果找到标定板的角点，将其添加到列表中
        image_points.append(corners)
        object_points_list.append(object_points)

        # 在图像上绘制角点
        cv2.drawChessboardCorners(frame, (board_width, board_height), corners, ret)

        # 在图像上显示标定板的角点
        cv2.imshow('Chessboard', frame)

    # 按下空格键来拍摄图像并执行标定
    if cv2.waitKey(1) & 0xFF == ord(' '):
        # 进行相机标定
        ret, camera_matrix, dist_coeffs, rvecs, tvecs = cv2.calibrateCamera(
            object_points_list, image_points, frame.shape[:-1], camera_matrix, dist_coeffs)

        # 打印相机矩阵和畸变系数
        print("Camera Matrix:\n", camera_matrix)
        print("Distortion Coefficients:\n", dist_coeffs)

        # 退出循环
        break
print(frame.shape[:-1])
# 释放相机并关闭窗口
cap.release()
cv2.destroyAllWindows()








