;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetString)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetString (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETSTRING")
  (make-package "NIRYO_ONE_MSGS::SETSTRING"))
(unless (find-package "NIRYO_ONE_MSGS::SETSTRINGREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETSTRINGREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETSTRINGRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetStringRequest
  :super ros::object
  :slots (_value ))

(defmethod niryo_one_msgs::SetStringRequest
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::SetStringResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetStringResponse
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

(defclass niryo_one_msgs::SetString
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetString :md5sum-) "f84b476c9d85e5a277125fce9822f626")
(setf (get niryo_one_msgs::SetString :datatype-) "niryo_one_msgs/SetString")
(setf (get niryo_one_msgs::SetString :request) niryo_one_msgs::SetStringRequest)
(setf (get niryo_one_msgs::SetString :response) niryo_one_msgs::SetStringResponse)

(defmethod niryo_one_msgs::SetStringRequest
  (:response () (instance niryo_one_msgs::SetStringResponse :init)))

(setf (get niryo_one_msgs::SetStringRequest :md5sum-) "f84b476c9d85e5a277125fce9822f626")
(setf (get niryo_one_msgs::SetStringRequest :datatype-) "niryo_one_msgs/SetStringRequest")
(setf (get niryo_one_msgs::SetStringRequest :definition-)
      "string value
---
int32 status
string message

")

(setf (get niryo_one_msgs::SetStringResponse :md5sum-) "f84b476c9d85e5a277125fce9822f626")
(setf (get niryo_one_msgs::SetStringResponse :datatype-) "niryo_one_msgs/SetStringResponse")
(setf (get niryo_one_msgs::SetStringResponse :definition-)
      "string value
---
int32 status
string message

")



(provide :niryo_one_msgs/SetString "f84b476c9d85e5a277125fce9822f626")


