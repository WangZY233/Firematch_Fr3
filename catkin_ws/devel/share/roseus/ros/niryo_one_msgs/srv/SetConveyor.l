;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetConveyor)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetConveyor (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETCONVEYOR")
  (make-package "NIRYO_ONE_MSGS::SETCONVEYOR"))
(unless (find-package "NIRYO_ONE_MSGS::SETCONVEYORREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETCONVEYORREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETCONVEYORRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETCONVEYORRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetConveyorRequest
  :super ros::object
  :slots (_id _activate ))

(defmethod niryo_one_msgs::SetConveyorRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:activate __activate) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _activate __activate)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; bool _activate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::SetConveyorResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetConveyorResponse
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
    ;; uint8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::SetConveyor
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetConveyor :md5sum-) "afb7227a45bc4a5cddeb751521d20304")
(setf (get niryo_one_msgs::SetConveyor :datatype-) "niryo_one_msgs/SetConveyor")
(setf (get niryo_one_msgs::SetConveyor :request) niryo_one_msgs::SetConveyorRequest)
(setf (get niryo_one_msgs::SetConveyor :response) niryo_one_msgs::SetConveyorResponse)

(defmethod niryo_one_msgs::SetConveyorRequest
  (:response () (instance niryo_one_msgs::SetConveyorResponse :init)))

(setf (get niryo_one_msgs::SetConveyorRequest :md5sum-) "afb7227a45bc4a5cddeb751521d20304")
(setf (get niryo_one_msgs::SetConveyorRequest :datatype-) "niryo_one_msgs/SetConveyorRequest")
(setf (get niryo_one_msgs::SetConveyorRequest :definition-)
      "uint8 id
bool activate
---
uint8 status
string message
")

(setf (get niryo_one_msgs::SetConveyorResponse :md5sum-) "afb7227a45bc4a5cddeb751521d20304")
(setf (get niryo_one_msgs::SetConveyorResponse :datatype-) "niryo_one_msgs/SetConveyorResponse")
(setf (get niryo_one_msgs::SetConveyorResponse :definition-)
      "uint8 id
bool activate
---
uint8 status
string message
")



(provide :niryo_one_msgs/SetConveyor "afb7227a45bc4a5cddeb751521d20304")


