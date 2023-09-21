;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetTargetPose)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetTargetPose (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETTARGETPOSE")
  (make-package "NIRYO_ONE_MSGS::GETTARGETPOSE"))
(unless (find-package "NIRYO_ONE_MSGS::GETTARGETPOSEREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETTARGETPOSEREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETTARGETPOSERESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETTARGETPOSERESPONSE"))

(in-package "ROS")





(intern "*GRIP_AUTO*" (find-package "NIRYO_ONE_MSGS::GETTARGETPOSEREQUEST"))
(shadow '*GRIP_AUTO* (find-package "NIRYO_ONE_MSGS::GETTARGETPOSEREQUEST"))
(defconstant niryo_one_msgs::GetTargetPoseRequest::*GRIP_AUTO* "auto")

(defun niryo_one_msgs::GetTargetPoseRequest-to-symbol (const)
  (cond
        (t nil)))

(defclass niryo_one_msgs::GetTargetPoseRequest
  :super ros::object
  :slots (_workspace _grip _tool_id _height_offset _x_rel _y_rel _yaw_rel ))

(defmethod niryo_one_msgs::GetTargetPoseRequest
  (:init
   (&key
    ((:workspace __workspace) "")
    ((:grip __grip) "")
    ((:tool_id __tool_id) 0)
    ((:height_offset __height_offset) 0.0)
    ((:x_rel __x_rel) 0.0)
    ((:y_rel __y_rel) 0.0)
    ((:yaw_rel __yaw_rel) 0.0)
    )
   (send-super :init)
   (setq _workspace (string __workspace))
   (setq _grip (string __grip))
   (setq _tool_id (round __tool_id))
   (setq _height_offset (float __height_offset))
   (setq _x_rel (float __x_rel))
   (setq _y_rel (float __y_rel))
   (setq _yaw_rel (float __yaw_rel))
   self)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:grip
   (&optional __grip)
   (if __grip (setq _grip __grip)) _grip)
  (:tool_id
   (&optional __tool_id)
   (if __tool_id (setq _tool_id __tool_id)) _tool_id)
  (:height_offset
   (&optional __height_offset)
   (if __height_offset (setq _height_offset __height_offset)) _height_offset)
  (:x_rel
   (&optional __x_rel)
   (if __x_rel (setq _x_rel __x_rel)) _x_rel)
  (:y_rel
   (&optional __y_rel)
   (if __y_rel (setq _y_rel __y_rel)) _y_rel)
  (:yaw_rel
   (&optional __yaw_rel)
   (if __yaw_rel (setq _yaw_rel __yaw_rel)) _yaw_rel)
  (:serialization-length
   ()
   (+
    ;; string _workspace
    4 (length _workspace)
    ;; string _grip
    4 (length _grip)
    ;; int32 _tool_id
    4
    ;; float32 _height_offset
    4
    ;; float32 _x_rel
    4
    ;; float32 _y_rel
    4
    ;; float32 _yaw_rel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;; string _grip
       (write-long (length _grip) s) (princ _grip s)
     ;; int32 _tool_id
       (write-long _tool_id s)
     ;; float32 _height_offset
       (sys::poke _height_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_rel
       (sys::poke _x_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_rel
       (sys::poke _y_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rel
       (sys::poke _yaw_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _grip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _tool_id
     (setq _tool_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _height_offset
     (setq _height_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_rel
     (setq _x_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_rel
     (setq _y_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rel
     (setq _yaw_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_one_msgs::GetTargetPoseResponse
  :super ros::object
  :slots (_status _message _target_pose ))

(defmethod niryo_one_msgs::GetTargetPoseResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:target_pose __target_pose) (instance niryo_one_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _target_pose __target_pose)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_one_msgs/RobotState _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_one_msgs/RobotState _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/RobotState _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetTargetPose
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetTargetPose :md5sum-) "dc01ee317d0bd0fbdd3c0d39de43fdb8")
(setf (get niryo_one_msgs::GetTargetPose :datatype-) "niryo_one_msgs/GetTargetPose")
(setf (get niryo_one_msgs::GetTargetPose :request) niryo_one_msgs::GetTargetPoseRequest)
(setf (get niryo_one_msgs::GetTargetPose :response) niryo_one_msgs::GetTargetPoseResponse)

(defmethod niryo_one_msgs::GetTargetPoseRequest
  (:response () (instance niryo_one_msgs::GetTargetPoseResponse :init)))

(setf (get niryo_one_msgs::GetTargetPoseRequest :md5sum-) "dc01ee317d0bd0fbdd3c0d39de43fdb8")
(setf (get niryo_one_msgs::GetTargetPoseRequest :datatype-) "niryo_one_msgs/GetTargetPoseRequest")
(setf (get niryo_one_msgs::GetTargetPoseRequest :definition-)
      "string GRIP_AUTO = auto

string workspace
string grip
int32 tool_id           # Used if grip_name = GRIP_AUTO
float32 height_offset
float32 x_rel
float32 y_rel
float32 yaw_rel
---
int32 status
string message
niryo_one_msgs/RobotState target_pose


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

(setf (get niryo_one_msgs::GetTargetPoseResponse :md5sum-) "dc01ee317d0bd0fbdd3c0d39de43fdb8")
(setf (get niryo_one_msgs::GetTargetPoseResponse :datatype-) "niryo_one_msgs/GetTargetPoseResponse")
(setf (get niryo_one_msgs::GetTargetPoseResponse :definition-)
      "string GRIP_AUTO = auto

string workspace
string grip
int32 tool_id           # Used if grip_name = GRIP_AUTO
float32 height_offset
float32 x_rel
float32 y_rel
float32 yaw_rel
---
int32 status
string message
niryo_one_msgs/RobotState target_pose


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



(provide :niryo_one_msgs/GetTargetPose "dc01ee317d0bd0fbdd3c0d39de43fdb8")


