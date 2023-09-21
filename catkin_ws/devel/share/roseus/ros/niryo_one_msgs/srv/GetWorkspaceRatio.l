;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetWorkspaceRatio)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetWorkspaceRatio (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACERATIO")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACERATIO"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACERATIOREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACERATIOREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACERATIORESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACERATIORESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::GetWorkspaceRatioRequest
  :super ros::object
  :slots (_workspace ))

(defmethod niryo_one_msgs::GetWorkspaceRatioRequest
  (:init
   (&key
    ((:workspace __workspace) "")
    )
   (send-super :init)
   (setq _workspace (string __workspace))
   self)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:serialization-length
   ()
   (+
    ;; string _workspace
    4 (length _workspace)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceRatioResponse
  :super ros::object
  :slots (_status _message _ratio ))

(defmethod niryo_one_msgs::GetWorkspaceRatioResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:ratio __ratio) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _ratio (float __ratio))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:ratio
   (&optional __ratio)
   (if __ratio (setq _ratio __ratio)) _ratio)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; float32 _ratio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32 _ratio
       (sys::poke _ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _ratio
     (setq _ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceRatio
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetWorkspaceRatio :md5sum-) "ce70a1191ba3e011669c12b7ee6501e1")
(setf (get niryo_one_msgs::GetWorkspaceRatio :datatype-) "niryo_one_msgs/GetWorkspaceRatio")
(setf (get niryo_one_msgs::GetWorkspaceRatio :request) niryo_one_msgs::GetWorkspaceRatioRequest)
(setf (get niryo_one_msgs::GetWorkspaceRatio :response) niryo_one_msgs::GetWorkspaceRatioResponse)

(defmethod niryo_one_msgs::GetWorkspaceRatioRequest
  (:response () (instance niryo_one_msgs::GetWorkspaceRatioResponse :init)))

(setf (get niryo_one_msgs::GetWorkspaceRatioRequest :md5sum-) "ce70a1191ba3e011669c12b7ee6501e1")
(setf (get niryo_one_msgs::GetWorkspaceRatioRequest :datatype-) "niryo_one_msgs/GetWorkspaceRatioRequest")
(setf (get niryo_one_msgs::GetWorkspaceRatioRequest :definition-)
      "string workspace
---
int32 status
string message
float32 ratio  # width/height

")

(setf (get niryo_one_msgs::GetWorkspaceRatioResponse :md5sum-) "ce70a1191ba3e011669c12b7ee6501e1")
(setf (get niryo_one_msgs::GetWorkspaceRatioResponse :datatype-) "niryo_one_msgs/GetWorkspaceRatioResponse")
(setf (get niryo_one_msgs::GetWorkspaceRatioResponse :definition-)
      "string workspace
---
int32 status
string message
float32 ratio  # width/height

")



(provide :niryo_one_msgs/GetWorkspaceRatio "ce70a1191ba3e011669c12b7ee6501e1")


