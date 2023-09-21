;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ChangeHardwareVersion)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ChangeHardwareVersion (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSION")
  (make-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSION"))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSIONREQUEST")
  (make-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSIONREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSIONRESPONSE")
  (make-package "NIRYO_ONE_MSGS::CHANGEHARDWAREVERSIONRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::ChangeHardwareVersionRequest
  :super ros::object
  :slots (_old_version _new_version ))

(defmethod niryo_one_msgs::ChangeHardwareVersionRequest
  (:init
   (&key
    ((:old_version __old_version) 0)
    ((:new_version __new_version) 0)
    )
   (send-super :init)
   (setq _old_version (round __old_version))
   (setq _new_version (round __new_version))
   self)
  (:old_version
   (&optional __old_version)
   (if __old_version (setq _old_version __old_version)) _old_version)
  (:new_version
   (&optional __new_version)
   (if __new_version (setq _new_version __new_version)) _new_version)
  (:serialization-length
   ()
   (+
    ;; int32 _old_version
    4
    ;; int32 _new_version
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _old_version
       (write-long _old_version s)
     ;; int32 _new_version
       (write-long _new_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _old_version
     (setq _old_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _new_version
     (setq _new_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_one_msgs::ChangeHardwareVersionResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::ChangeHardwareVersionResponse
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

(defclass niryo_one_msgs::ChangeHardwareVersion
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ChangeHardwareVersion :md5sum-) "a236aed5507cea948ac43373e4211c23")
(setf (get niryo_one_msgs::ChangeHardwareVersion :datatype-) "niryo_one_msgs/ChangeHardwareVersion")
(setf (get niryo_one_msgs::ChangeHardwareVersion :request) niryo_one_msgs::ChangeHardwareVersionRequest)
(setf (get niryo_one_msgs::ChangeHardwareVersion :response) niryo_one_msgs::ChangeHardwareVersionResponse)

(defmethod niryo_one_msgs::ChangeHardwareVersionRequest
  (:response () (instance niryo_one_msgs::ChangeHardwareVersionResponse :init)))

(setf (get niryo_one_msgs::ChangeHardwareVersionRequest :md5sum-) "a236aed5507cea948ac43373e4211c23")
(setf (get niryo_one_msgs::ChangeHardwareVersionRequest :datatype-) "niryo_one_msgs/ChangeHardwareVersionRequest")
(setf (get niryo_one_msgs::ChangeHardwareVersionRequest :definition-)
      "int32 old_version
int32 new_version
---
int32 status
string message

")

(setf (get niryo_one_msgs::ChangeHardwareVersionResponse :md5sum-) "a236aed5507cea948ac43373e4211c23")
(setf (get niryo_one_msgs::ChangeHardwareVersionResponse :datatype-) "niryo_one_msgs/ChangeHardwareVersionResponse")
(setf (get niryo_one_msgs::ChangeHardwareVersionResponse :definition-)
      "int32 old_version
int32 new_version
---
int32 status
string message

")



(provide :niryo_one_msgs/ChangeHardwareVersion "a236aed5507cea948ac43373e4211c23")


