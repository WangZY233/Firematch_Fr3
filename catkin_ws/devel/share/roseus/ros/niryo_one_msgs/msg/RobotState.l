;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::RobotState)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'RobotState (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::ROBOTSTATE")
  (make-package "NIRYO_ONE_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_one_msgs::RobotState
  :super ros::object
  :slots (_position _rpy ))

(defmethod niryo_one_msgs::RobotState
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_one_msgs::RPY :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _rpy __rpy)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_one_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_one_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_one_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(setf (get niryo_one_msgs::RobotState :md5sum-) "7def9c7c09d0c0932bec218f06669713")
(setf (get niryo_one_msgs::RobotState :datatype-) "niryo_one_msgs/RobotState")
(setf (get niryo_one_msgs::RobotState :definition-)
      "
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



(provide :niryo_one_msgs/RobotState "7def9c7c09d0c0932bec218f06669713")


