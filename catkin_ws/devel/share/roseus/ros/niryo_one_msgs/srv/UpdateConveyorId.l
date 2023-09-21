;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::UpdateConveyorId)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'UpdateConveyorId (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::UPDATECONVEYORID")
  (make-package "NIRYO_ONE_MSGS::UPDATECONVEYORID"))
(unless (find-package "NIRYO_ONE_MSGS::UPDATECONVEYORIDREQUEST")
  (make-package "NIRYO_ONE_MSGS::UPDATECONVEYORIDREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::UPDATECONVEYORIDRESPONSE")
  (make-package "NIRYO_ONE_MSGS::UPDATECONVEYORIDRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::UpdateConveyorIdRequest
  :super ros::object
  :slots (_old_id _new_id ))

(defmethod niryo_one_msgs::UpdateConveyorIdRequest
  (:init
   (&key
    ((:old_id __old_id) 0)
    ((:new_id __new_id) 0)
    )
   (send-super :init)
   (setq _old_id (round __old_id))
   (setq _new_id (round __new_id))
   self)
  (:old_id
   (&optional __old_id)
   (if __old_id (setq _old_id __old_id)) _old_id)
  (:new_id
   (&optional __new_id)
   (if __new_id (setq _new_id __new_id)) _new_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _old_id
    1
    ;; uint8 _new_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _old_id
       (write-byte _old_id s)
     ;; uint8 _new_id
       (write-byte _new_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _old_id
     (setq _old_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _new_id
     (setq _new_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::UpdateConveyorIdResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::UpdateConveyorIdResponse
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

(defclass niryo_one_msgs::UpdateConveyorId
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::UpdateConveyorId :md5sum-) "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(setf (get niryo_one_msgs::UpdateConveyorId :datatype-) "niryo_one_msgs/UpdateConveyorId")
(setf (get niryo_one_msgs::UpdateConveyorId :request) niryo_one_msgs::UpdateConveyorIdRequest)
(setf (get niryo_one_msgs::UpdateConveyorId :response) niryo_one_msgs::UpdateConveyorIdResponse)

(defmethod niryo_one_msgs::UpdateConveyorIdRequest
  (:response () (instance niryo_one_msgs::UpdateConveyorIdResponse :init)))

(setf (get niryo_one_msgs::UpdateConveyorIdRequest :md5sum-) "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(setf (get niryo_one_msgs::UpdateConveyorIdRequest :datatype-) "niryo_one_msgs/UpdateConveyorIdRequest")
(setf (get niryo_one_msgs::UpdateConveyorIdRequest :definition-)
      "uint8 old_id
uint8 new_id
---
uint8 status
string message
")

(setf (get niryo_one_msgs::UpdateConveyorIdResponse :md5sum-) "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(setf (get niryo_one_msgs::UpdateConveyorIdResponse :datatype-) "niryo_one_msgs/UpdateConveyorIdResponse")
(setf (get niryo_one_msgs::UpdateConveyorIdResponse :definition-)
      "uint8 old_id
uint8 new_id
---
uint8 status
string message
")



(provide :niryo_one_msgs/UpdateConveyorId "9e9cf49bb2af3c06095ed6c4f8b6cef4")


