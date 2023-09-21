;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::SequenceAutorunStatus)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'SequenceAutorunStatus (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SEQUENCEAUTORUNSTATUS")
  (make-package "NIRYO_ONE_MSGS::SEQUENCEAUTORUNSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SequenceAutorunStatus.msg.html


(defclass niryo_one_msgs::SequenceAutorunStatus
  :super ros::object
  :slots (_enabled _mode _sequence_ids ))

(defmethod niryo_one_msgs::SequenceAutorunStatus
  (:init
   (&key
    ((:enabled __enabled) nil)
    ((:mode __mode) 0)
    ((:sequence_ids __sequence_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _enabled __enabled)
   (setq _mode (round __mode))
   (setq _sequence_ids __sequence_ids)
   self)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:sequence_ids
   (&optional __sequence_ids)
   (if __sequence_ids (setq _sequence_ids __sequence_ids)) _sequence_ids)
  (:serialization-length
   ()
   (+
    ;; bool _enabled
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
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get niryo_one_msgs::SequenceAutorunStatus :md5sum-) "2fd70cfd773159456b3e0c9b23254bb4")
(setf (get niryo_one_msgs::SequenceAutorunStatus :datatype-) "niryo_one_msgs/SequenceAutorunStatus")
(setf (get niryo_one_msgs::SequenceAutorunStatus :definition-)
      "bool enabled
int32 mode
int32[] sequence_ids

")



(provide :niryo_one_msgs/SequenceAutorunStatus "2fd70cfd773159456b3e0c9b23254bb4")


