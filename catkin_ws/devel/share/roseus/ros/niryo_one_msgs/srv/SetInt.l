;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetInt)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetInt (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETINT")
  (make-package "NIRYO_ONE_MSGS::SETINT"))
(unless (find-package "NIRYO_ONE_MSGS::SETINTREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETINTREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETINTRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETINTRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetIntRequest
  :super ros::object
  :slots (_value ))

(defmethod niryo_one_msgs::SetIntRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_one_msgs::SetIntResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetIntResponse
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

(defclass niryo_one_msgs::SetInt
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetInt :md5sum-) "f68558c744d504db5de688a7cf32394e")
(setf (get niryo_one_msgs::SetInt :datatype-) "niryo_one_msgs/SetInt")
(setf (get niryo_one_msgs::SetInt :request) niryo_one_msgs::SetIntRequest)
(setf (get niryo_one_msgs::SetInt :response) niryo_one_msgs::SetIntResponse)

(defmethod niryo_one_msgs::SetIntRequest
  (:response () (instance niryo_one_msgs::SetIntResponse :init)))

(setf (get niryo_one_msgs::SetIntRequest :md5sum-) "f68558c744d504db5de688a7cf32394e")
(setf (get niryo_one_msgs::SetIntRequest :datatype-) "niryo_one_msgs/SetIntRequest")
(setf (get niryo_one_msgs::SetIntRequest :definition-)
      "int32 value
---
int32 status
string message

")

(setf (get niryo_one_msgs::SetIntResponse :md5sum-) "f68558c744d504db5de688a7cf32394e")
(setf (get niryo_one_msgs::SetIntResponse :datatype-) "niryo_one_msgs/SetIntResponse")
(setf (get niryo_one_msgs::SetIntResponse :definition-)
      "int32 value
---
int32 status
string message

")



(provide :niryo_one_msgs/SetInt "f68558c744d504db5de688a7cf32394e")


