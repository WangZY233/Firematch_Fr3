;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::EditGrip)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'EditGrip (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::EDITGRIP")
  (make-package "NIRYO_ONE_MSGS::EDITGRIP"))
(unless (find-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST")
  (make-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::EDITGRIPRESPONSE")
  (make-package "NIRYO_ONE_MSGS::EDITGRIPRESPONSE"))

(in-package "ROS")





(intern "*CREATE*" (find-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST"))
(shadow '*CREATE* (find-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST"))
(defconstant niryo_one_msgs::EditGripRequest::*CREATE* 1)
(intern "*REMOVE*" (find-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST"))
(shadow '*REMOVE* (find-package "NIRYO_ONE_MSGS::EDITGRIPREQUEST"))
(defconstant niryo_one_msgs::EditGripRequest::*REMOVE* -1)

(defun niryo_one_msgs::EditGripRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_one_msgs::EditGripRequest::*CREATE*)
        ((= const -1) 'niryo_one_msgs::EditGripRequest::*REMOVE*)
        (t nil)))

(defclass niryo_one_msgs::EditGripRequest
  :super ros::object
  :slots (_cmd _name _workspace _robot_pose ))

(defmethod niryo_one_msgs::EditGripRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:name __name) "")
    ((:workspace __workspace) "")
    ((:robot_pose __robot_pose) (instance niryo_one_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _name (string __name))
   (setq _workspace (string __workspace))
   (setq _robot_pose __robot_pose)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; string _name
    4 (length _name)
    ;; string _workspace
    4 (length _workspace)
    ;; niryo_one_msgs/RobotState _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;; niryo_one_msgs/RobotState _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/RobotState _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::EditGripResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::EditGripResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::EditGrip
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::EditGrip :md5sum-) "7940ed6d33c2b11259d93351ad8743b1")
(setf (get niryo_one_msgs::EditGrip :datatype-) "niryo_one_msgs/EditGrip")
(setf (get niryo_one_msgs::EditGrip :request) niryo_one_msgs::EditGripRequest)
(setf (get niryo_one_msgs::EditGrip :response) niryo_one_msgs::EditGripResponse)

(defmethod niryo_one_msgs::EditGripRequest
  (:response () (instance niryo_one_msgs::EditGripResponse :init)))

(setf (get niryo_one_msgs::EditGripRequest :md5sum-) "7940ed6d33c2b11259d93351ad8743b1")
(setf (get niryo_one_msgs::EditGripRequest :datatype-) "niryo_one_msgs/EditGripRequest")
(setf (get niryo_one_msgs::EditGripRequest :definition-)
      "int32 CREATE = 1
int32 REMOVE = -1

int32 cmd
string name
string workspace
niryo_one_msgs/RobotState robot_pose

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
---
int32 status
string message

")

(setf (get niryo_one_msgs::EditGripResponse :md5sum-) "7940ed6d33c2b11259d93351ad8743b1")
(setf (get niryo_one_msgs::EditGripResponse :datatype-) "niryo_one_msgs/EditGripResponse")
(setf (get niryo_one_msgs::EditGripResponse :definition-)
      "int32 CREATE = 1
int32 REMOVE = -1

int32 cmd
string name
string workspace
niryo_one_msgs/RobotState robot_pose

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
---
int32 status
string message

")



(provide :niryo_one_msgs/EditGrip "7940ed6d33c2b11259d93351ad8743b1")


