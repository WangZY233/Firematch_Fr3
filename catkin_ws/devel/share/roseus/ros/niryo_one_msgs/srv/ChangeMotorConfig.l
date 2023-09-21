;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ChangeMotorConfig)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ChangeMotorConfig (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIG")
  (make-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIG"))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIGREQUEST")
  (make-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIGREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIGRESPONSE")
  (make-package "NIRYO_ONE_MSGS::CHANGEMOTORCONFIGRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::ChangeMotorConfigRequest
  :super ros::object
  :slots (_can_required_motor_id_list _dxl_required_motor_id_list ))

(defmethod niryo_one_msgs::ChangeMotorConfigRequest
  (:init
   (&key
    ((:can_required_motor_id_list __can_required_motor_id_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:dxl_required_motor_id_list __dxl_required_motor_id_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _can_required_motor_id_list __can_required_motor_id_list)
   (setq _dxl_required_motor_id_list __dxl_required_motor_id_list)
   self)
  (:can_required_motor_id_list
   (&optional __can_required_motor_id_list)
   (if __can_required_motor_id_list (setq _can_required_motor_id_list __can_required_motor_id_list)) _can_required_motor_id_list)
  (:dxl_required_motor_id_list
   (&optional __dxl_required_motor_id_list)
   (if __dxl_required_motor_id_list (setq _dxl_required_motor_id_list __dxl_required_motor_id_list)) _dxl_required_motor_id_list)
  (:serialization-length
   ()
   (+
    ;; int32[] _can_required_motor_id_list
    (* 4    (length _can_required_motor_id_list)) 4
    ;; int32[] _dxl_required_motor_id_list
    (* 4    (length _dxl_required_motor_id_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _can_required_motor_id_list
     (write-long (length _can_required_motor_id_list) s)
     (dotimes (i (length _can_required_motor_id_list))
       (write-long (elt _can_required_motor_id_list i) s)
       )
     ;; int32[] _dxl_required_motor_id_list
     (write-long (length _dxl_required_motor_id_list) s)
     (dotimes (i (length _dxl_required_motor_id_list))
       (write-long (elt _dxl_required_motor_id_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _can_required_motor_id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _can_required_motor_id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _can_required_motor_id_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _dxl_required_motor_id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dxl_required_motor_id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dxl_required_motor_id_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::ChangeMotorConfigResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::ChangeMotorConfigResponse
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

(defclass niryo_one_msgs::ChangeMotorConfig
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ChangeMotorConfig :md5sum-) "4656a66d9c8c003dc0f8aa40d5770162")
(setf (get niryo_one_msgs::ChangeMotorConfig :datatype-) "niryo_one_msgs/ChangeMotorConfig")
(setf (get niryo_one_msgs::ChangeMotorConfig :request) niryo_one_msgs::ChangeMotorConfigRequest)
(setf (get niryo_one_msgs::ChangeMotorConfig :response) niryo_one_msgs::ChangeMotorConfigResponse)

(defmethod niryo_one_msgs::ChangeMotorConfigRequest
  (:response () (instance niryo_one_msgs::ChangeMotorConfigResponse :init)))

(setf (get niryo_one_msgs::ChangeMotorConfigRequest :md5sum-) "4656a66d9c8c003dc0f8aa40d5770162")
(setf (get niryo_one_msgs::ChangeMotorConfigRequest :datatype-) "niryo_one_msgs/ChangeMotorConfigRequest")
(setf (get niryo_one_msgs::ChangeMotorConfigRequest :definition-)
      "int32[] can_required_motor_id_list
int32[] dxl_required_motor_id_list
---
int32 status
string message

")

(setf (get niryo_one_msgs::ChangeMotorConfigResponse :md5sum-) "4656a66d9c8c003dc0f8aa40d5770162")
(setf (get niryo_one_msgs::ChangeMotorConfigResponse :datatype-) "niryo_one_msgs/ChangeMotorConfigResponse")
(setf (get niryo_one_msgs::ChangeMotorConfigResponse :definition-)
      "int32[] can_required_motor_id_list
int32[] dxl_required_motor_id_list
---
int32 status
string message

")



(provide :niryo_one_msgs/ChangeMotorConfig "4656a66d9c8c003dc0f8aa40d5770162")


