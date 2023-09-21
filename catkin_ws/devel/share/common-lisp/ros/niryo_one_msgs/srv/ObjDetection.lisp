; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ObjDetection-request.msg.html

(cl:defclass <ObjDetection-request> (roslisp-msg-protocol:ros-message)
  ((obj_type
    :reader obj_type
    :initarg :obj_type
    :type cl:string
    :initform "")
   (obj_color
    :reader obj_color
    :initarg :obj_color
    :type cl:string
    :initform "")
   (workspace_ratio
    :reader workspace_ratio
    :initarg :workspace_ratio
    :type cl:float
    :initform 0.0)
   (ret_image
    :reader ret_image
    :initarg :ret_image
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ObjDetection-request (<ObjDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ObjDetection-request> is deprecated: use niryo_one_msgs-srv:ObjDetection-request instead.")))

(cl:ensure-generic-function 'obj_type-val :lambda-list '(m))
(cl:defmethod obj_type-val ((m <ObjDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:obj_type-val is deprecated.  Use niryo_one_msgs-srv:obj_type instead.")
  (obj_type m))

(cl:ensure-generic-function 'obj_color-val :lambda-list '(m))
(cl:defmethod obj_color-val ((m <ObjDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:obj_color-val is deprecated.  Use niryo_one_msgs-srv:obj_color instead.")
  (obj_color m))

(cl:ensure-generic-function 'workspace_ratio-val :lambda-list '(m))
(cl:defmethod workspace_ratio-val ((m <ObjDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:workspace_ratio-val is deprecated.  Use niryo_one_msgs-srv:workspace_ratio instead.")
  (workspace_ratio m))

(cl:ensure-generic-function 'ret_image-val :lambda-list '(m))
(cl:defmethod ret_image-val ((m <ObjDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:ret_image-val is deprecated.  Use niryo_one_msgs-srv:ret_image instead.")
  (ret_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjDetection-request>) ostream)
  "Serializes a message object of type '<ObjDetection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj_color))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'workspace_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret_image) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjDetection-request>) istream)
  "Deserializes a message object of type '<ObjDetection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'workspace_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ret_image) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjDetection-request>)))
  "Returns string type for a service object of type '<ObjDetection-request>"
  "niryo_one_msgs/ObjDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjDetection-request)))
  "Returns string type for a service object of type 'ObjDetection-request"
  "niryo_one_msgs/ObjDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjDetection-request>)))
  "Returns md5sum for a message object of type '<ObjDetection-request>"
  "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjDetection-request)))
  "Returns md5sum for a message object of type 'ObjDetection-request"
  "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjDetection-request>)))
  "Returns full string definition for message of type '<ObjDetection-request>"
  (cl:format cl:nil "string obj_type~%string obj_color~%float32 workspace_ratio~%bool ret_image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjDetection-request)))
  "Returns full string definition for message of type 'ObjDetection-request"
  (cl:format cl:nil "string obj_type~%string obj_color~%float32 workspace_ratio~%bool ret_image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjDetection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obj_type))
     4 (cl:length (cl:slot-value msg 'obj_color))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjDetection-request
    (cl:cons ':obj_type (obj_type msg))
    (cl:cons ':obj_color (obj_color msg))
    (cl:cons ':workspace_ratio (workspace_ratio msg))
    (cl:cons ':ret_image (ret_image msg))
))
;//! \htmlinclude ObjDetection-response.msg.html

(cl:defclass <ObjDetection-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (obj_pose
    :reader obj_pose
    :initarg :obj_pose
    :type niryo_one_msgs-msg:ObjectPose
    :initform (cl:make-instance 'niryo_one_msgs-msg:ObjectPose))
   (obj_type
    :reader obj_type
    :initarg :obj_type
    :type cl:string
    :initform "")
   (obj_color
    :reader obj_color
    :initarg :obj_color
    :type cl:string
    :initform "")
   (img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass ObjDetection-response (<ObjDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ObjDetection-response> is deprecated: use niryo_one_msgs-srv:ObjDetection-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ObjDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'obj_pose-val :lambda-list '(m))
(cl:defmethod obj_pose-val ((m <ObjDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:obj_pose-val is deprecated.  Use niryo_one_msgs-srv:obj_pose instead.")
  (obj_pose m))

(cl:ensure-generic-function 'obj_type-val :lambda-list '(m))
(cl:defmethod obj_type-val ((m <ObjDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:obj_type-val is deprecated.  Use niryo_one_msgs-srv:obj_type instead.")
  (obj_type m))

(cl:ensure-generic-function 'obj_color-val :lambda-list '(m))
(cl:defmethod obj_color-val ((m <ObjDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:obj_color-val is deprecated.  Use niryo_one_msgs-srv:obj_color instead.")
  (obj_color m))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <ObjDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:img-val is deprecated.  Use niryo_one_msgs-srv:img instead.")
  (img m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjDetection-response>)))
    "Constants for message type '<ObjDetection-response>"
  '((:SUCCESSFUL . 1)
    (:VIDEO_STREAM_NOT_RUNNING . -1)
    (:OBJECT_NOT_FOUND . -2)
    (:MARKERS_NOT_FOUND . -3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjDetection-response)))
    "Constants for message type 'ObjDetection-response"
  '((:SUCCESSFUL . 1)
    (:VIDEO_STREAM_NOT_RUNNING . -1)
    (:OBJECT_NOT_FOUND . -2)
    (:MARKERS_NOT_FOUND . -3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjDetection-response>) ostream)
  "Serializes a message object of type '<ObjDetection-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj_color))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjDetection-response>) istream)
  "Deserializes a message object of type '<ObjDetection-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjDetection-response>)))
  "Returns string type for a service object of type '<ObjDetection-response>"
  "niryo_one_msgs/ObjDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjDetection-response)))
  "Returns string type for a service object of type 'ObjDetection-response"
  "niryo_one_msgs/ObjDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjDetection-response>)))
  "Returns md5sum for a message object of type '<ObjDetection-response>"
  "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjDetection-response)))
  "Returns md5sum for a message object of type 'ObjDetection-response"
  "a5f6ca6e7d76ce99e6a8b77d055a7a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjDetection-response>)))
  "Returns full string definition for message of type '<ObjDetection-response>"
  (cl:format cl:nil "int32 status~%int32 SUCCESSFUL = 1~%int32 VIDEO_STREAM_NOT_RUNNING = -1~%int32 OBJECT_NOT_FOUND = -2~%int32 MARKERS_NOT_FOUND = -3~%~%niryo_one_msgs/ObjectPose obj_pose~%~%string obj_type~%string obj_color~%~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: niryo_one_msgs/ObjectPose~%float64 x~%float64 y~%float64 z~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjDetection-response)))
  "Returns full string definition for message of type 'ObjDetection-response"
  (cl:format cl:nil "int32 status~%int32 SUCCESSFUL = 1~%int32 VIDEO_STREAM_NOT_RUNNING = -1~%int32 OBJECT_NOT_FOUND = -2~%int32 MARKERS_NOT_FOUND = -3~%~%niryo_one_msgs/ObjectPose obj_pose~%~%string obj_type~%string obj_color~%~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: niryo_one_msgs/ObjectPose~%float64 x~%float64 y~%float64 z~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjDetection-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_pose))
     4 (cl:length (cl:slot-value msg 'obj_type))
     4 (cl:length (cl:slot-value msg 'obj_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjDetection-response
    (cl:cons ':status (status msg))
    (cl:cons ':obj_pose (obj_pose msg))
    (cl:cons ':obj_type (obj_type msg))
    (cl:cons ':obj_color (obj_color msg))
    (cl:cons ':img (img msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObjDetection)))
  'ObjDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObjDetection)))
  'ObjDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjDetection)))
  "Returns string type for a service object of type '<ObjDetection>"
  "niryo_one_msgs/ObjDetection")