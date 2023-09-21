;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetLeds)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetLeds (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETLEDS")
  (make-package "NIRYO_ONE_MSGS::SETLEDS"))
(unless (find-package "NIRYO_ONE_MSGS::SETLEDSREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETLEDSREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETLEDSRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETLEDSRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetLedsRequest
  :super ros::object
  :slots (_values ))

(defmethod niryo_one_msgs::SetLedsRequest
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; int32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-long (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::SetLedsResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetLedsResponse
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

(defclass niryo_one_msgs::SetLeds
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetLeds :md5sum-) "861c024139442a9008e88f543a7fb00e")
(setf (get niryo_one_msgs::SetLeds :datatype-) "niryo_one_msgs/SetLeds")
(setf (get niryo_one_msgs::SetLeds :request) niryo_one_msgs::SetLedsRequest)
(setf (get niryo_one_msgs::SetLeds :response) niryo_one_msgs::SetLedsResponse)

(defmethod niryo_one_msgs::SetLedsRequest
  (:response () (instance niryo_one_msgs::SetLedsResponse :init)))

(setf (get niryo_one_msgs::SetLedsRequest :md5sum-) "861c024139442a9008e88f543a7fb00e")
(setf (get niryo_one_msgs::SetLedsRequest :datatype-) "niryo_one_msgs/SetLedsRequest")
(setf (get niryo_one_msgs::SetLedsRequest :definition-)
      "int32[] values
---
int32 status
string message

")

(setf (get niryo_one_msgs::SetLedsResponse :md5sum-) "861c024139442a9008e88f543a7fb00e")
(setf (get niryo_one_msgs::SetLedsResponse :datatype-) "niryo_one_msgs/SetLedsResponse")
(setf (get niryo_one_msgs::SetLedsResponse :definition-)
      "int32[] values
---
int32 status
string message

")



(provide :niryo_one_msgs/SetLeds "861c024139442a9008e88f543a7fb00e")


