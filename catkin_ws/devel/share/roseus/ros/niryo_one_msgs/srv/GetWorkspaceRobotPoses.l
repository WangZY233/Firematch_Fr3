;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetWorkspaceRobotPoses)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetWorkspaceRobotPoses (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSES")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSES"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSESREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSESREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSESRESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACEROBOTPOSESRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::GetWorkspaceRobotPosesRequest
  :super ros::object
  :slots (_workspace ))

(defmethod niryo_one_msgs::GetWorkspaceRobotPosesRequest
  (:init
   (&key
    ((:workspace __workspace) "")
    )
   (send-super :init)
   (setq _workspace (string __workspace))
   self)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:serialization-length
   ()
   (+
    ;; string _workspace
    4 (length _workspace)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceRobotPosesResponse
  :super ros::object
  :slots (_status _message _pose_origin _pose_1 _pose_2 _pose_3 ))

(defmethod niryo_one_msgs::GetWorkspaceRobotPosesResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:pose_origin __pose_origin) (instance niryo_one_msgs::RobotState :init))
    ((:pose_1 __pose_1) (instance niryo_one_msgs::RobotState :init))
    ((:pose_2 __pose_2) (instance niryo_one_msgs::RobotState :init))
    ((:pose_3 __pose_3) (instance niryo_one_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _pose_origin __pose_origin)
   (setq _pose_1 __pose_1)
   (setq _pose_2 __pose_2)
   (setq _pose_3 __pose_3)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:pose_origin
   (&rest __pose_origin)
   (if (keywordp (car __pose_origin))
       (send* _pose_origin __pose_origin)
     (progn
       (if __pose_origin (setq _pose_origin (car __pose_origin)))
       _pose_origin)))
  (:pose_1
   (&rest __pose_1)
   (if (keywordp (car __pose_1))
       (send* _pose_1 __pose_1)
     (progn
       (if __pose_1 (setq _pose_1 (car __pose_1)))
       _pose_1)))
  (:pose_2
   (&rest __pose_2)
   (if (keywordp (car __pose_2))
       (send* _pose_2 __pose_2)
     (progn
       (if __pose_2 (setq _pose_2 (car __pose_2)))
       _pose_2)))
  (:pose_3
   (&rest __pose_3)
   (if (keywordp (car __pose_3))
       (send* _pose_3 __pose_3)
     (progn
       (if __pose_3 (setq _pose_3 (car __pose_3)))
       _pose_3)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_one_msgs/RobotState _pose_origin
    (send _pose_origin :serialization-length)
    ;; niryo_one_msgs/RobotState _pose_1
    (send _pose_1 :serialization-length)
    ;; niryo_one_msgs/RobotState _pose_2
    (send _pose_2 :serialization-length)
    ;; niryo_one_msgs/RobotState _pose_3
    (send _pose_3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_one_msgs/RobotState _pose_origin
       (send _pose_origin :serialize s)
     ;; niryo_one_msgs/RobotState _pose_1
       (send _pose_1 :serialize s)
     ;; niryo_one_msgs/RobotState _pose_2
       (send _pose_2 :serialize s)
     ;; niryo_one_msgs/RobotState _pose_3
       (send _pose_3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/RobotState _pose_origin
     (send _pose_origin :deserialize buf ptr-) (incf ptr- (send _pose_origin :serialization-length))
   ;; niryo_one_msgs/RobotState _pose_1
     (send _pose_1 :deserialize buf ptr-) (incf ptr- (send _pose_1 :serialization-length))
   ;; niryo_one_msgs/RobotState _pose_2
     (send _pose_2 :deserialize buf ptr-) (incf ptr- (send _pose_2 :serialization-length))
   ;; niryo_one_msgs/RobotState _pose_3
     (send _pose_3 :deserialize buf ptr-) (incf ptr- (send _pose_3 :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceRobotPoses
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetWorkspaceRobotPoses :md5sum-) "280aaac02707bfb63e891c5f74a0b7c5")
(setf (get niryo_one_msgs::GetWorkspaceRobotPoses :datatype-) "niryo_one_msgs/GetWorkspaceRobotPoses")
(setf (get niryo_one_msgs::GetWorkspaceRobotPoses :request) niryo_one_msgs::GetWorkspaceRobotPosesRequest)
(setf (get niryo_one_msgs::GetWorkspaceRobotPoses :response) niryo_one_msgs::GetWorkspaceRobotPosesResponse)

(defmethod niryo_one_msgs::GetWorkspaceRobotPosesRequest
  (:response () (instance niryo_one_msgs::GetWorkspaceRobotPosesResponse :init)))

(setf (get niryo_one_msgs::GetWorkspaceRobotPosesRequest :md5sum-) "280aaac02707bfb63e891c5f74a0b7c5")
(setf (get niryo_one_msgs::GetWorkspaceRobotPosesRequest :datatype-) "niryo_one_msgs/GetWorkspaceRobotPosesRequest")
(setf (get niryo_one_msgs::GetWorkspaceRobotPosesRequest :definition-)
      "string workspace
---
int32 status
string message
niryo_one_msgs/RobotState pose_origin
niryo_one_msgs/RobotState pose_1
niryo_one_msgs/RobotState pose_2
niryo_one_msgs/RobotState pose_3


================================================================================
MSG: niryo_one_msgs/RobotState

geometry_msgs/Point position
niryo_one_msgs/RPY rpy

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw
")

(setf (get niryo_one_msgs::GetWorkspaceRobotPosesResponse :md5sum-) "280aaac02707bfb63e891c5f74a0b7c5")
(setf (get niryo_one_msgs::GetWorkspaceRobotPosesResponse :datatype-) "niryo_one_msgs/GetWorkspaceRobotPosesResponse")
(setf (get niryo_one_msgs::GetWorkspaceRobotPosesResponse :definition-)
      "string workspace
---
int32 status
string message
niryo_one_msgs/RobotState pose_origin
niryo_one_msgs/RobotState pose_1
niryo_one_msgs/RobotState pose_2
niryo_one_msgs/RobotState pose_3


================================================================================
MSG: niryo_one_msgs/RobotState

geometry_msgs/Point position
niryo_one_msgs/RPY rpy

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw
")



(provide :niryo_one_msgs/GetWorkspaceRobotPoses "280aaac02707bfb63e891c5f74a0b7c5")


