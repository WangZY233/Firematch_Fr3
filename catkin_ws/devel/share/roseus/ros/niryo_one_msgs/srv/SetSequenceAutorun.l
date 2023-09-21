;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SetSequenceAutorun)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SetSequenceAutorun (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUN")
  (make-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUN"))
(unless (find-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUNREQUEST")
  (make-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUNREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUNRESPONSE")
  (make-package "NIRYO_ONE_MSGS::SETSEQUENCEAUTORUNRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::SetSequenceAutorunRequest
  :super ros::object
  :slots (_enable _mode _sequence_ids ))

(defmethod niryo_one_msgs::SetSequenceAutorunRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:mode __mode) 0)
    ((:sequence_ids __sequence_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _mode (round __mode))
   (setq _sequence_ids __sequence_ids)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:sequence_ids
   (&optional __sequence_ids)
   (if __sequence_ids (setq _sequence_ids __sequence_ids)) _sequence_ids)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; int32 _mode
    4
    ;; int32[] _sequence_ids
    (* 4    (length _sequence_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; int32 _mode
       (write-long _mode s)
     ;; int32[] _sequence_ids
     (write-long (length _sequence_ids) s)
     (dotimes (i (length _sequence_ids))
       (write-long (elt _sequence_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _sequence_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sequence_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sequence_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::SetSequenceAutorunResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_one_msgs::SetSequenceAutorunResponse
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

(defclass niryo_one_msgs::SetSequenceAutorun
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::SetSequenceAutorun :md5sum-) "c7885cc63aba1de369f012805d9e0b4e")
(setf (get niryo_one_msgs::SetSequenceAutorun :datatype-) "niryo_one_msgs/SetSequenceAutorun")
(setf (get niryo_one_msgs::SetSequenceAutorun :request) niryo_one_msgs::SetSequenceAutorunRequest)
(setf (get niryo_one_msgs::SetSequenceAutorun :response) niryo_one_msgs::SetSequenceAutorunResponse)

(defmethod niryo_one_msgs::SetSequenceAutorunRequest
  (:response () (instance niryo_one_msgs::SetSequenceAutorunResponse :init)))

(setf (get niryo_one_msgs::SetSequenceAutorunRequest :md5sum-) "c7885cc63aba1de369f012805d9e0b4e")
(setf (get niryo_one_msgs::SetSequenceAutorunRequest :datatype-) "niryo_one_msgs/SetSequenceAutorunRequest")
(setf (get niryo_one_msgs::SetSequenceAutorunRequest :definition-)
      "bool enable
int32 mode
int32[] sequence_ids
---
int32 status
string message

")

(setf (get niryo_one_msgs::SetSequenceAutorunResponse :md5sum-) "c7885cc63aba1de369f012805d9e0b4e")
(setf (get niryo_one_msgs::SetSequenceAutorunResponse :datatype-) "niryo_one_msgs/SetSequenceAutorunResponse")
(setf (get niryo_one_msgs::SetSequenceAutorunResponse :definition-)
      "bool enable
int32 mode
int32[] sequence_ids
---
int32 status
string message

")



(provide :niryo_one_msgs/SetSequenceAutorun "c7885cc63aba1de369f012805d9e0b4e")


