; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude DebugColorDetection-request.msg.html

(cl:defclass <DebugColorDetection-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass DebugColorDetection-request (<DebugColorDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugColorDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugColorDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<DebugColorDetection-request> is deprecated: use niryo_one_msgs-srv:DebugColorDetection-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <DebugColorDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:color-val is deprecated.  Use niryo_one_msgs-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugColorDetection-request>) ostream)
  "Serializes a message object of type '<DebugColorDetection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugColorDetection-request>) istream)
  "Deserializes a message object of type '<DebugColorDetection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugColorDetection-request>)))
  "Returns string type for a service object of type '<DebugColorDetection-request>"
  "niryo_one_msgs/DebugColorDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection-request)))
  "Returns string type for a service object of type 'DebugColorDetection-request"
  "niryo_one_msgs/DebugColorDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugColorDetection-request>)))
  "Returns md5sum for a message object of type '<DebugColorDetection-request>"
  "eb19e5ebfbd3430f7ed24585edf266b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugColorDetection-request)))
  "Returns md5sum for a message object of type 'DebugColorDetection-request"
  "eb19e5ebfbd3430f7ed24585edf266b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugColorDetection-request>)))
  "Returns full string definition for message of type '<DebugColorDetection-request>"
  (cl:format cl:nil "string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugColorDetection-request)))
  "Returns full string definition for message of type 'DebugColorDetection-request"
  (cl:format cl:nil "string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugColorDetection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugColorDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugColorDetection-request
    (cl:cons ':color (color msg))
))
;//! \htmlinclude DebugColorDetection-response.msg.html

(cl:defclass <DebugColorDetection-response> (roslisp-msg-protocol:ros-message)
  ((img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass DebugColorDetection-response (<DebugColorDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugColorDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugColorDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<DebugColorDetection-response> is deprecated: use niryo_one_msgs-srv:DebugColorDetection-response instead.")))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <DebugColorDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:img-val is deprecated.  Use niryo_one_msgs-srv:img instead.")
  (img m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugColorDetection-response>) ostream)
  "Serializes a message object of type '<DebugColorDetection-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugColorDetection-response>) istream)
  "Deserializes a message object of type '<DebugColorDetection-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugColorDetection-response>)))
  "Returns string type for a service object of type '<DebugColorDetection-response>"
  "niryo_one_msgs/DebugColorDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection-response)))
  "Returns string type for a service object of type 'DebugColorDetection-response"
  "niryo_one_msgs/DebugColorDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugColorDetection-response>)))
  "Returns md5sum for a message object of type '<DebugColorDetection-response>"
  "eb19e5ebfbd3430f7ed24585edf266b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugColorDetection-response)))
  "Returns md5sum for a message object of type 'DebugColorDetection-response"
  "eb19e5ebfbd3430f7ed24585edf266b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugColorDetection-response>)))
  "Returns full string definition for message of type '<DebugColorDetection-response>"
  (cl:format cl:nil "sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugColorDetection-response)))
  "Returns full string definition for message of type 'DebugColorDetection-response"
  (cl:format cl:nil "sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugColorDetection-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugColorDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugColorDetection-response
    (cl:cons ':img (img msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DebugColorDetection)))
  'DebugColorDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DebugColorDetection)))
  'DebugColorDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugColorDetection)))
  "Returns string type for a service object of type '<DebugColorDetection>"
  "niryo_one_msgs/DebugColorDetection")