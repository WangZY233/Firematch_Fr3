;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::EditWorkspace)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'EditWorkspace (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::EDITWORKSPACE")
  (make-package "NIRYO_ONE_MSGS::EDITWORKSPACE"))
(unless (find-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST")
  (make-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::EDITWORKSPACERESPONSE")
  (make-package "NIRYO_ONE_MSGS::EDITWORKSPACERESPONSE"))

(in-package "ROS")





(intern "*CREATE*" (find-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST"))
(shadow '*CREATE* (find-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST"))
(defconstant niryo_one_msgs::EditWorkspaceRequest::*CREATE* 1)
(intern "*REMOVE*" (find-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST"))
(shadow '*REMOVE* (find-package "NIRYO_ONE_MSGS::EDITWORKSPACEREQUEST"))
(defconstant niryo_one_msgs::EditWorkspaceRequest::*REMOVE* -1)

(defun niryo_one_msgs::EditWorkspaceRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_one_msgs::EditWorkspaceRequest::*CREATE*)
        ((= const -1) 'niryo_one_msgs::EditWorkspaceRequest::*REMOVE*)
        (t nil)))

(defclass niryo_one_msgs::EditWorkspaceRequest
  :super ros::object
  :slots (_cmd _name _pose_origin _pose_1 _pose_2 _pose_3 ))

(defmethod niryo_one_msgs::EditWorkspaceRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:name __name) "")
    ((:pose_origin __pose_origin) (instance niryo_one_msgs::RobotState :init))
    ((:pose_1 __pose_1) (instance niryo_one_msgs::RobotState :init))
    ((:pose_2 __pose_2) (instance niryo_one_msgs::RobotState :init))
    ((:pose_3 __pose_3) (instance niryo_one_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _name (string __name))
   (setq _pose_origin __pose_origin)
   (setq _pose_1 __pose_1)
   (setq _pose_2 __pose_2)
   (setq _pose_3 __pose_3)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; int32 _cmd
    4
    ;; string _name
    4 (length _name)
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
     ;; int32 _cmd
       (write-long _cmd s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
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
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass niryo_one_msgs::EditWorkspaceResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::EditWorkspaceResponse
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

(defclass niryo_one_msgs::EditWorkspace
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::EditWorkspace :md5sum-) "d54856ae48391661101e9b86f647a340")
(setf (get niryo_one_msgs::EditWorkspace :datatype-) "niryo_one_msgs/EditWorkspace")
(setf (get niryo_one_msgs::EditWorkspace :request) niryo_one_msgs::EditWorkspaceRequest)
(setf (get niryo_one_msgs::EditWorkspace :response) niryo_one_msgs::EditWorkspaceResponse)

(defmethod niryo_one_msgs::EditWorkspaceRequest
  (:response () (instance niryo_one_msgs::EditWorkspaceResponse :init)))

(setf (get niryo_one_msgs::EditWorkspaceRequest :md5sum-) "d54856ae48391661101e9b86f647a340")
(setf (get niryo_one_msgs::EditWorkspaceRequest :datatype-) "niryo_one_msgs/EditWorkspaceRequest")
(setf (get niryo_one_msgs::EditWorkspaceRequest :definition-)
      "int32 CREATE = 1
int32 REMOVE = -1

int32 cmd
string name
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
---
int32 status
string message

")

(setf (get niryo_one_msgs::EditWorkspaceResponse :md5sum-) "d54856ae48391661101e9b86f647a340")
(setf (get niryo_one_msgs::EditWorkspaceResponse :datatype-) "niryo_one_msgs/EditWorkspaceResponse")
(setf (get niryo_one_msgs::EditWorkspaceResponse :definition-)
      "int32 CREATE = 1
int32 REMOVE = -1

int32 cmd
string name
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
---
int32 status
string message

")



(provide :niryo_one_msgs/EditWorkspace "d54856ae48391661101e9b86f647a340")


