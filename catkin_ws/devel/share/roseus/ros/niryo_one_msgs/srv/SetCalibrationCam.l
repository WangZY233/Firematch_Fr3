;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetCalibrationCam)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetCalibrationCam (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAM")
  (make-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAM"))
(unless (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetCalibrationCamRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_one_msgs::SetCalibrationCamRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*SUCCESSFULLY_SET*" (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(shadow '*SUCCESSFULLY_SET* (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(defconstant niryo_one_msgs::SetCalibrationCamResponse::*SUCCESSFULLY_SET* 0)
(intern "*OVERWRITTEN*" (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(shadow '*OVERWRITTEN* (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(defconstant niryo_one_msgs::SetCalibrationCamResponse::*OVERWRITTEN* 1)
(intern "*NOT_SET*" (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(shadow '*NOT_SET* (find-package "NIRYO_ONE_MSGS::SETCALIBRATIONCAMRESPONSE"))
(defconstant niryo_one_msgs::SetCalibrationCamResponse::*NOT_SET* -1)

(defun niryo_one_msgs::SetCalibrationCamResponse-to-symbol (const)
  (cond
        ((= const 0) 'niryo_one_msgs::SetCalibrationCamResponse::*SUCCESSFULLY_SET*)
        ((= const 1) 'niryo_one_msgs::SetCalibrationCamResponse::*OVERWRITTEN*)
        ((= const -1) 'niryo_one_msgs::SetCalibrationCamResponse::*NOT_SET*)
        (t nil)))

(defclass niryo_one_msgs::SetCalibrationCamResponse
  :super ros::object
  :slots (_status ))

(defmethod niryo_one_msgs::SetCalibrationCamResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_one_msgs::SetCalibrationCam
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetCalibrationCam :md5sum-) "34594f1cc2cba58cae4d417628221460")
(setf (get niryo_one_msgs::SetCalibrationCam :datatype-) "niryo_one_msgs/SetCalibrationCam")
(setf (get niryo_one_msgs::SetCalibrationCam :request) niryo_one_msgs::SetCalibrationCamRequest)
(setf (get niryo_one_msgs::SetCalibrationCam :response) niryo_one_msgs::SetCalibrationCamResponse)

(defmethod niryo_one_msgs::SetCalibrationCamRequest
  (:response () (instance niryo_one_msgs::SetCalibrationCamResponse :init)))

(setf (get niryo_one_msgs::SetCalibrationCamRequest :md5sum-) "34594f1cc2cba58cae4d417628221460")
(setf (get niryo_one_msgs::SetCalibrationCamRequest :datatype-) "niryo_one_msgs/SetCalibrationCamRequest")
(setf (get niryo_one_msgs::SetCalibrationCamRequest :definition-)
      "string name
---
int32 status
int32 SUCCESSFULLY_SET = 0
int32 OVERWRITTEN = 1
int32 NOT_SET = -1
")

(setf (get niryo_one_msgs::SetCalibrationCamResponse :md5sum-) "34594f1cc2cba58cae4d417628221460")
(setf (get niryo_one_msgs::SetCalibrationCamResponse :datatype-) "niryo_one_msgs/SetCalibrationCamResponse")
(setf (get niryo_one_msgs::SetCalibrationCamResponse :definition-)
      "string name
---
int32 status
int32 SUCCESSFULLY_SET = 0
int32 OVERWRITTEN = 1
int32 NOT_SET = -1
")



(provide :niryo_one_msgs/SetCalibrationCam "34594f1cc2cba58cae4d417628221460")


