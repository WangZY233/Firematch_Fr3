;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ObjDetection)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ObjDetection (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::OBJDETECTION")
  (make-package "NIRYO_ONE_MSGS::OBJDETECTION"))
(unless (find-package "NIRYO_ONE_MSGS::OBJDETECTIONREQUEST")
  (make-package "NIRYO_ONE_MSGS::OBJDETECTIONREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE")
  (make-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass niryo_one_msgs::ObjDetectionRequest
  :super ros::object
  :slots (_obj_type _obj_color _workspace_ratio _ret_image ))

(defmethod niryo_one_msgs::ObjDetectionRequest
  (:init
   (&key
    ((:obj_type __obj_type) "")
    ((:obj_color __obj_color) "")
    ((:workspace_ratio __workspace_ratio) 0.0)
    ((:ret_image __ret_image) nil)
    )
   (send-super :init)
   (setq _obj_type (string __obj_type))
   (setq _obj_color (string __obj_color))
   (setq _workspace_ratio (float __workspace_ratio))
   (setq _ret_image __ret_image)
   self)
  (:obj_type
   (&optional __obj_type)
   (if __obj_type (setq _obj_type __obj_type)) _obj_type)
  (:obj_color
   (&optional __obj_color)
   (if __obj_color (setq _obj_color __obj_color)) _obj_color)
  (:workspace_ratio
   (&optional __workspace_ratio)
   (if __workspace_ratio (setq _workspace_ratio __workspace_ratio)) _workspace_ratio)
  (:ret_image
   (&optional (__ret_image :null))
   (if (not (eq __ret_image :null)) (setq _ret_image __ret_image)) _ret_image)
  (:serialization-length
   ()
   (+
    ;; string _obj_type
    4 (length _obj_type)
    ;; string _obj_color
    4 (length _obj_color)
    ;; float32 _workspace_ratio
    4
    ;; bool _ret_image
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obj_type
       (write-long (length _obj_type) s) (princ _obj_type s)
     ;; string _obj_color
       (write-long (length _obj_color) s) (princ _obj_color s)
     ;; float32 _workspace_ratio
       (sys::poke _workspace_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ret_image
       (if _ret_image (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obj_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _obj_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _workspace_ratio
     (setq _workspace_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ret_image
     (setq _ret_image (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(intern "*SUCCESSFUL*" (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(shadow '*SUCCESSFUL* (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(defconstant niryo_one_msgs::ObjDetectionResponse::*SUCCESSFUL* 1)
(intern "*VIDEO_STREAM_NOT_RUNNING*" (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(shadow '*VIDEO_STREAM_NOT_RUNNING* (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(defconstant niryo_one_msgs::ObjDetectionResponse::*VIDEO_STREAM_NOT_RUNNING* -1)
(intern "*OBJECT_NOT_FOUND*" (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(shadow '*OBJECT_NOT_FOUND* (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(defconstant niryo_one_msgs::ObjDetectionResponse::*OBJECT_NOT_FOUND* -2)
(intern "*MARKERS_NOT_FOUND*" (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(shadow '*MARKERS_NOT_FOUND* (find-package "NIRYO_ONE_MSGS::OBJDETECTIONRESPONSE"))
(defconstant niryo_one_msgs::ObjDetectionResponse::*MARKERS_NOT_FOUND* -3)

(defun niryo_one_msgs::ObjDetectionResponse-to-symbol (const)
  (cond
        ((= const 1) 'niryo_one_msgs::ObjDetectionResponse::*SUCCESSFUL*)
        ((= const -1) 'niryo_one_msgs::ObjDetectionResponse::*VIDEO_STREAM_NOT_RUNNING*)
        ((= const -2) 'niryo_one_msgs::ObjDetectionResponse::*OBJECT_NOT_FOUND*)
        ((= const -3) 'niryo_one_msgs::ObjDetectionResponse::*MARKERS_NOT_FOUND*)
        (t nil)))

(defclass niryo_one_msgs::ObjDetectionResponse
  :super ros::object
  :slots (_status _obj_pose _obj_type _obj_color _img ))

(defmethod niryo_one_msgs::ObjDetectionResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:obj_pose __obj_pose) (instance niryo_one_msgs::ObjectPose :init))
    ((:obj_type __obj_type) "")
    ((:obj_color __obj_color) "")
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _obj_pose __obj_pose)
   (setq _obj_type (string __obj_type))
   (setq _obj_color (string __obj_color))
   (setq _img __img)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:obj_pose
   (&rest __obj_pose)
   (if (keywordp (car __obj_pose))
       (send* _obj_pose __obj_pose)
     (progn
       (if __obj_pose (setq _obj_pose (car __obj_pose)))
       _obj_pose)))
  (:obj_type
   (&optional __obj_type)
   (if __obj_type (setq _obj_type __obj_type)) _obj_type)
  (:obj_color
   (&optional __obj_color)
   (if __obj_color (setq _obj_color __obj_color)) _obj_color)
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
    ;; int32 _status
    4
    ;; niryo_one_msgs/ObjectPose _obj_pose
    (send _obj_pose :serialization-length)
    ;; string _obj_type
    4 (length _obj_type)
    ;; string _obj_color
    4 (length _obj_color)
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; niryo_one_msgs/ObjectPose _obj_pose
       (send _obj_pose :serialize s)
     ;; string _obj_type
       (write-long (length _obj_type) s) (princ _obj_type s)
     ;; string _obj_color
       (write-long (length _obj_color) s) (princ _obj_color s)
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_one_msgs/ObjectPose _obj_pose
     (send _obj_pose :deserialize buf ptr-) (incf ptr- (send _obj_pose :serialization-length))
   ;; string _obj_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _obj_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::ObjDetection
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ObjDetection :md5sum-) "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(setf (get niryo_one_msgs::ObjDetection :datatype-) "niryo_one_msgs/ObjDetection")
(setf (get niryo_one_msgs::ObjDetection :request) niryo_one_msgs::ObjDetectionRequest)
(setf (get niryo_one_msgs::ObjDetection :response) niryo_one_msgs::ObjDetectionResponse)

(defmethod niryo_one_msgs::ObjDetectionRequest
  (:response () (instance niryo_one_msgs::ObjDetectionResponse :init)))

(setf (get niryo_one_msgs::ObjDetectionRequest :md5sum-) "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(setf (get niryo_one_msgs::ObjDetectionRequest :datatype-) "niryo_one_msgs/ObjDetectionRequest")
(setf (get niryo_one_msgs::ObjDetectionRequest :definition-)
      "string obj_type
string obj_color
float32 workspace_ratio
bool ret_image
---
int32 status
int32 SUCCESSFUL = 1
int32 VIDEO_STREAM_NOT_RUNNING = -1
int32 OBJECT_NOT_FOUND = -2
int32 MARKERS_NOT_FOUND = -3

niryo_one_msgs/ObjectPose obj_pose

string obj_type
string obj_color

sensor_msgs/CompressedImage img


================================================================================
MSG: niryo_one_msgs/ObjectPose
float64 x
float64 y
float64 z

float64 roll
float64 pitch
float64 yaw

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

(setf (get niryo_one_msgs::ObjDetectionResponse :md5sum-) "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(setf (get niryo_one_msgs::ObjDetectionResponse :datatype-) "niryo_one_msgs/ObjDetectionResponse")
(setf (get niryo_one_msgs::ObjDetectionResponse :definition-)
      "string obj_type
string obj_color
float32 workspace_ratio
bool ret_image
---
int32 status
int32 SUCCESSFUL = 1
int32 VIDEO_STREAM_NOT_RUNNING = -1
int32 OBJECT_NOT_FOUND = -2
int32 MARKERS_NOT_FOUND = -3

niryo_one_msgs/ObjectPose obj_pose

string obj_type
string obj_color

sensor_msgs/CompressedImage img


================================================================================
MSG: niryo_one_msgs/ObjectPose
float64 x
float64 y
float64 z

float64 roll
float64 pitch
float64 yaw

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



(provide :niryo_one_msgs/ObjDetection "a5f6ca6e7d76ce99e6a8b77d055a7a4a")


