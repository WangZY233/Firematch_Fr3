;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetDigitalIO)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetDigitalIO (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETDIGITALIO")
  (make-package "NIRYO_ONE_MSGS::SETDIGITALIO"))
(unless (find-package "NIRYO_ONE_MSGS::SETDIGITALIOREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETDIGITALIOREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETDIGITALIORESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETDIGITALIORESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetDigitalIORequest
  :super ros::object
  :slots (_pin _value ))

(defmethod niryo_one_msgs::SetDigitalIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value (round __value))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::SetDigitalIOResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetDigitalIOResponse
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

(defclass niryo_one_msgs::SetDigitalIO
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetDigitalIO :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_one_msgs::SetDigitalIO :datatype-) "niryo_one_msgs/SetDigitalIO")
(setf (get niryo_one_msgs::SetDigitalIO :request) niryo_one_msgs::SetDigitalIORequest)
(setf (get niryo_one_msgs::SetDigitalIO :response) niryo_one_msgs::SetDigitalIOResponse)

(defmethod niryo_one_msgs::SetDigitalIORequest
  (:response () (instance niryo_one_msgs::SetDigitalIOResponse :init)))

(setf (get niryo_one_msgs::SetDigitalIORequest :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_one_msgs::SetDigitalIORequest :datatype-) "niryo_one_msgs/SetDigitalIORequest")
(setf (get niryo_one_msgs::SetDigitalIORequest :definition-)
      "uint8 pin
uint8 value
---
int32 status
string message

")

(setf (get niryo_one_msgs::SetDigitalIOResponse :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_one_msgs::SetDigitalIOResponse :datatype-) "niryo_one_msgs/SetDigitalIOResponse")
(setf (get niryo_one_msgs::SetDigitalIOResponse :definition-)
      "uint8 pin
uint8 value
---
int32 status
string message

")



(provide :niryo_one_msgs/SetDigitalIO "58756075ba59c34125d6331e8a8727d4")


