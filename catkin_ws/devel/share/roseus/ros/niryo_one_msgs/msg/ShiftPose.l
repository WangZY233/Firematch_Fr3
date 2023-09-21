;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ShiftPose)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ShiftPose (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SHIFTPOSE")
  (make-package "NIRYO_ONE_MSGS::SHIFTPOSE"))

(in-package "ROS")
;;//! \htmlinclude ShiftPose.msg.html


(defclass niryo_one_msgs::ShiftPose
  :super ros::object
  :slots (_axis_number _value ))

(defmethod niryo_one_msgs::ShiftPose
  (:init
   (&key
    ((:axis_number __axis_number) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _axis_number (round __axis_number))
   (setq _value (float __value))
   self)
  (:axis_number
   (&optional __axis_number)
   (if __axis_number (setq _axis_number __axis_number)) _axis_number)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _axis_number
    4
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _axis_number
       (write-long _axis_number s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _axis_number
     (setq _axis_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get niryo_one_msgs::ShiftPose :md5sum-) "1582f6063ca2d2749f4798d853f452ac")
(setf (get niryo_one_msgs::ShiftPose :datatype-) "niryo_one_msgs/ShiftPose")
(setf (get niryo_one_msgs::ShiftPose :definition-)
      "
int32 axis_number
float64 value

")



(provide :niryo_one_msgs/ShiftPose "1582f6063ca2d2749f4798d853f452ac")


