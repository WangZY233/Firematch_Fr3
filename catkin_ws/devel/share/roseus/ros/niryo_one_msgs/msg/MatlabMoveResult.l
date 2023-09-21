;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::MatlabMoveResult)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'MatlabMoveResult (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::MATLABMOVERESULT")
  (make-package "NIRYO_ONE_MSGS::MATLABMOVERESULT"))

(in-package "ROS")
;;//! \htmlinclude MatlabMoveResult.msg.html


(defclass niryo_one_msgs::MatlabMoveResult
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::MatlabMoveResult
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

(setf (get niryo_one_msgs::MatlabMoveResult :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_one_msgs::MatlabMoveResult :datatype-) "niryo_one_msgs/MatlabMoveResult")
(setf (get niryo_one_msgs::MatlabMoveResult :definition-)
      "int32 status 
string message 

")



(provide :niryo_one_msgs/MatlabMoveResult "2c1d00fb8b4e78420f43d93d5292a429")


