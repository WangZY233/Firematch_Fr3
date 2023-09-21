;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::DebugMarkers)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'DebugMarkers (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGMARKERS")
  (make-package "NIRYO_ONE_MSGS::DEBUGMARKERS"))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGMARKERSREQUEST")
  (make-package "NIRYO_ONE_MSGS::DEBUGMARKERSREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::DEBUGMARKERSRESPONSE")
  (make-package "NIRYO_ONE_MSGS::DEBUGMARKERSRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass niryo_one_msgs::DebugMarkersRequest
  :super ros::object
  :slots ())

(defmethod niryo_one_msgs::DebugMarkersRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_one_msgs::DebugMarkersResponse
  :super ros::object
  :slots (_markers_detected _img ))

(defmethod niryo_one_msgs::DebugMarkersResponse
  (:init
   (&key
    ((:markers_detected __markers_detected) nil)
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _markers_detected __markers_detected)
   (setq _img __img)
   self)
  (:markers_detected
   (&optional (__markers_detected :null))
   (if (not (eq __markers_detected :null)) (setq _markers_detected __markers_detected)) _markers_detected)
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
    ;; bool _markers_detected
    1
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _markers_detected
       (if _markers_detected (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _markers_detected
     (setq _markers_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::DebugMarkers
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::DebugMarkers :md5sum-) "63758d5125879b809b9c2ee90cbc28ff")
(setf (get niryo_one_msgs::DebugMarkers :datatype-) "niryo_one_msgs/DebugMarkers")
(setf (get niryo_one_msgs::DebugMarkers :request) niryo_one_msgs::DebugMarkersRequest)
(setf (get niryo_one_msgs::DebugMarkers :response) niryo_one_msgs::DebugMarkersResponse)

(defmethod niryo_one_msgs::DebugMarkersRequest
  (:response () (instance niryo_one_msgs::DebugMarkersResponse :init)))

(setf (get niryo_one_msgs::DebugMarkersRequest :md5sum-) "63758d5125879b809b9c2ee90cbc28ff")
(setf (get niryo_one_msgs::DebugMarkersRequest :datatype-) "niryo_one_msgs/DebugMarkersRequest")
(setf (get niryo_one_msgs::DebugMarkersRequest :definition-)
      "---
bool markers_detected
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

(setf (get niryo_one_msgs::DebugMarkersResponse :md5sum-) "63758d5125879b809b9c2ee90cbc28ff")
(setf (get niryo_one_msgs::DebugMarkersResponse :datatype-) "niryo_one_msgs/DebugMarkersResponse")
(setf (get niryo_one_msgs::DebugMarkersResponse :definition-)
      "---
bool markers_detected
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



(provide :niryo_one_msgs/DebugMarkers "63758d5125879b809b9c2ee90cbc28ff")


