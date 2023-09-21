;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ManageProcess)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ManageProcess (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPROCESS")
  (make-package "NIRYO_ONE_MSGS::MANAGEPROCESS"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPROCESSREQUEST")
  (make-package "NIRYO_ONE_MSGS::MANAGEPROCESSREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGEPROCESSRESPONSE")
  (make-package "NIRYO_ONE_MSGS::MANAGEPROCESSRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::ManageProcessRequest
  :super ros::object
  :slots (_action _name ))

(defmethod niryo_one_msgs::ManageProcessRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _name (string __name))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::ManageProcessResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::ManageProcessResponse
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

(defclass niryo_one_msgs::ManageProcess
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ManageProcess :md5sum-) "ed541b1426d7fc8f78be14b5e4b306cf")
(setf (get niryo_one_msgs::ManageProcess :datatype-) "niryo_one_msgs/ManageProcess")
(setf (get niryo_one_msgs::ManageProcess :request) niryo_one_msgs::ManageProcessRequest)
(setf (get niryo_one_msgs::ManageProcess :response) niryo_one_msgs::ManageProcessResponse)

(defmethod niryo_one_msgs::ManageProcessRequest
  (:response () (instance niryo_one_msgs::ManageProcessResponse :init)))

(setf (get niryo_one_msgs::ManageProcessRequest :md5sum-) "ed541b1426d7fc8f78be14b5e4b306cf")
(setf (get niryo_one_msgs::ManageProcessRequest :datatype-) "niryo_one_msgs/ManageProcessRequest")
(setf (get niryo_one_msgs::ManageProcessRequest :definition-)
      "
# start, stop, restart, kill, start_all, stop_all

uint8 action
string name
---
int32 status
string message

")

(setf (get niryo_one_msgs::ManageProcessResponse :md5sum-) "ed541b1426d7fc8f78be14b5e4b306cf")
(setf (get niryo_one_msgs::ManageProcessResponse :datatype-) "niryo_one_msgs/ManageProcessResponse")
(setf (get niryo_one_msgs::ManageProcessResponse :definition-)
      "
# start, stop, restart, kill, start_all, stop_all

uint8 action
string name
---
int32 status
string message

")



(provide :niryo_one_msgs/ManageProcess "ed541b1426d7fc8f78be14b5e4b306cf")


