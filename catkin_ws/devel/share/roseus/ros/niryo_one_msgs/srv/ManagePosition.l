;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ManagePosition)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ManagePosition (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPOSITION")
  (make-package "NIRYO_ONE_MSGS::MANAGEPOSITION"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPOSITIONREQUEST")
  (make-package "NIRYO_ONE_MSGS::MANAGEPOSITIONREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPOSITIONRESPONSE")
  (make-package "NIRYO_ONE_MSGS::MANAGEPOSITIONRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::ManagePositionRequest
  :super ros::object
  :slots (_cmd_type _position_name _position ))

(defmethod niryo_one_msgs::ManagePositionRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:position_name __position_name) "")
    ((:position __position) (instance niryo_one_msgs::Position :init))
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _position_name (string __position_name))
   (setq _position __position)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:position_name
   (&optional __position_name)
   (if __position_name (setq _position_name __position_name)) _position_name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd_type
    4
    ;; string _position_name
    4 (length _position_name)
    ;; niryo_one_msgs/Position _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd_type
       (write-long _cmd_type s)
     ;; string _position_name
       (write-long (length _position_name) s) (princ _position_name s)
     ;; niryo_one_msgs/Position _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _position_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::ManagePositionResponse
  :super ros::object
  :slots (_status _message _position ))

(defmethod niryo_one_msgs::ManagePositionResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:position __position) (instance niryo_one_msgs::Position :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _position __position)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_one_msgs/Position _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_one_msgs/Position _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::ManagePosition
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ManagePosition :md5sum-) "adf4e061b0eee7a4afcbede59727e52a")
(setf (get niryo_one_msgs::ManagePosition :datatype-) "niryo_one_msgs/ManagePosition")
(setf (get niryo_one_msgs::ManagePosition :request) niryo_one_msgs::ManagePositionRequest)
(setf (get niryo_one_msgs::ManagePosition :response) niryo_one_msgs::ManagePositionResponse)

(defmethod niryo_one_msgs::ManagePositionRequest
  (:response () (instance niryo_one_msgs::ManagePositionResponse :init)))

(setf (get niryo_one_msgs::ManagePositionRequest :md5sum-) "adf4e061b0eee7a4afcbede59727e52a")
(setf (get niryo_one_msgs::ManagePositionRequest :datatype-) "niryo_one_msgs/ManagePositionRequest")
(setf (get niryo_one_msgs::ManagePositionRequest :definition-)
      "int32 cmd_type

string position_name
niryo_one_msgs/Position position


================================================================================
MSG: niryo_one_msgs/Position
string name

float64[] joints 
niryo_one_msgs/RPY rpy
geometry_msgs/Point point
geometry_msgs/Quaternion quaternion


================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message

niryo_one_msgs/Position position 


================================================================================
MSG: niryo_one_msgs/Position
string name

float64[] joints 
niryo_one_msgs/RPY rpy
geometry_msgs/Point point
geometry_msgs/Quaternion quaternion


================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get niryo_one_msgs::ManagePositionResponse :md5sum-) "adf4e061b0eee7a4afcbede59727e52a")
(setf (get niryo_one_msgs::ManagePositionResponse :datatype-) "niryo_one_msgs/ManagePositionResponse")
(setf (get niryo_one_msgs::ManagePositionResponse :definition-)
      "int32 cmd_type

string position_name
niryo_one_msgs/Position position


================================================================================
MSG: niryo_one_msgs/Position
string name

float64[] joints 
niryo_one_msgs/RPY rpy
geometry_msgs/Point point
geometry_msgs/Quaternion quaternion


================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message

niryo_one_msgs/Position position 


================================================================================
MSG: niryo_one_msgs/Position
string name

float64[] joints 
niryo_one_msgs/RPY rpy
geometry_msgs/Point point
geometry_msgs/Quaternion quaternion


================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :niryo_one_msgs/ManagePosition "adf4e061b0eee7a4afcbede59727e52a")


