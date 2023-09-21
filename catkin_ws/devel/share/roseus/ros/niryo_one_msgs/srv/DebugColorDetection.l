;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::DebugColorDetection)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'DebugColorDetection (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTION")
  (make-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTION"))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTIONREQUEST")
  (make-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTIONREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTIONRESPONSE")
  (make-package "NIRYO_ONE_MSGS::DEBUGCOLORDETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass niryo_one_msgs::DebugColorDetectionRequest
  :super ros::object
  :slots (_color ))

(defmethod niryo_one_msgs::DebugColorDetectionRequest
  (:init
   (&key
    ((:color __color) "")
    )
   (send-super :init)
   (setq _color (string __color))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::DebugColorDetectionResponse
  :super ros::object
  :slots (_img ))

(defmethod niryo_one_msgs::DebugColorDetectionResponse
  (:init
   (&key
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _img __img)
   self)
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::DebugColorDetection
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::DebugColorDetection :md5sum-) "eb19e5ebfbd3430f7ed24585edf266b5")
(setf (get niryo_one_msgs::DebugColorDetection :datatype-) "niryo_one_msgs/DebugColorDetection")
(setf (get niryo_one_msgs::DebugColorDetection :request) niryo_one_msgs::DebugColorDetectionRequest)
(setf (get niryo_one_msgs::DebugColorDetection :response) niryo_one_msgs::DebugColorDetectionResponse)

(defmethod niryo_one_msgs::DebugColorDetectionRequest
  (:response () (instance niryo_one_msgs::DebugColorDetectionResponse :init)))

(setf (get niryo_one_msgs::DebugColorDetectionRequest :md5sum-) "eb19e5ebfbd3430f7ed24585edf266b5")
(setf (get niryo_one_msgs::DebugColorDetectionRequest :datatype-) "niryo_one_msgs/DebugColorDetectionRequest")
(setf (get niryo_one_msgs::DebugColorDetectionRequest :definition-)
      "string color
---
sensor_msgs/CompressedImage img


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

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

(setf (get niryo_one_msgs::DebugColorDetectionResponse :md5sum-) "eb19e5ebfbd3430f7ed24585edf266b5")
(setf (get niryo_one_msgs::DebugColorDetectionResponse :datatype-) "niryo_one_msgs/DebugColorDetectionResponse")
(setf (get niryo_one_msgs::DebugColorDetectionResponse :definition-)
      "string color
---
sensor_msgs/CompressedImage img


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

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



(provide :niryo_one_msgs/DebugColorDetection "eb19e5ebfbd3430f7ed24585edf266b5")


