;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::LogStatus)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'LogStatus (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::LOGSTATUS")
  (make-package "NIRYO_ONE_MSGS::LOGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LogStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass niryo_one_msgs::LogStatus
  :super ros::object
  :slots (_header _log_size _available_disk_size _purge_log_on_startup ))

(defmethod niryo_one_msgs::LogStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:log_size __log_size) 0)
    ((:available_disk_size __available_disk_size) 0)
    ((:purge_log_on_startup __purge_log_on_startup) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _log_size (round __log_size))
   (setq _available_disk_size (round __available_disk_size))
   (setq _purge_log_on_startup __purge_log_on_startup)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:log_size
   (&optional __log_size)
   (if __log_size (setq _log_size __log_size)) _log_size)
  (:available_disk_size
   (&optional __available_disk_size)
   (if __available_disk_size (setq _available_disk_size __available_disk_size)) _available_disk_size)
  (:purge_log_on_startup
   (&optional (__purge_log_on_startup :null))
   (if (not (eq __purge_log_on_startup :null)) (setq _purge_log_on_startup __purge_log_on_startup)) _purge_log_on_startup)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _log_size
    4
    ;; int32 _available_disk_size
    4
    ;; bool _purge_log_on_startup
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _log_size
       (write-long _log_size s)
     ;; int32 _available_disk_size
       (write-long _available_disk_size s)
     ;; bool _purge_log_on_startup
       (if _purge_log_on_startup (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _log_size
     (setq _log_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _available_disk_size
     (setq _available_disk_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _purge_log_on_startup
     (setq _purge_log_on_startup (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_one_msgs::LogStatus :md5sum-) "37de8006fbbed6f8e3b23a8291bb9bf7")
(setf (get niryo_one_msgs::LogStatus :datatype-) "niryo_one_msgs/LogStatus")
(setf (get niryo_one_msgs::LogStatus :definition-)
      "
std_msgs/Header header

# in MB
int32 log_size 
int32 available_disk_size
bool purge_log_on_startup

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :niryo_one_msgs/LogStatus "37de8006fbbed6f8e3b23a8291bb9bf7")


