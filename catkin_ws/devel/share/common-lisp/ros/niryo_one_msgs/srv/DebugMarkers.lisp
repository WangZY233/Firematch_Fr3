; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude DebugMarkers-request.msg.html

(cl:defclass <DebugMarkers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DebugMarkers-request (<DebugMarkers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugMarkers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugMarkers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<DebugMarkers-request> is deprecated: use niryo_one_msgs-srv:DebugMarkers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugMarkers-request>) ostream)
  "Serializes a message object of type '<DebugMarkers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugMarkers-request>) istream)
  "Deserializes a message object of type '<DebugMarkers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugMarkers-request>)))
  "Returns string type for a service object of type '<DebugMarkers-request>"
  "niryo_one_msgs/DebugMarkersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugMarkers-request)))
  "Returns string type for a service object of type 'DebugMarkers-request"
  "niryo_one_msgs/DebugMarkersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugMarkers-request>)))
  "Returns md5sum for a message object of type '<DebugMarkers-request>"
  "63758d5125879b809b9c2ee90cbc28ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugMarkers-request)))
  "Returns md5sum for a message object of type 'DebugMarkers-request"
  "63758d5125879b809b9c2ee90cbc28ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugMarkers-request>)))
  "Returns full string definition for message of type '<DebugMarkers-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugMarkers-request)))
  "Returns full string definition for message of type 'DebugMarkers-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugMarkers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugMarkers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugMarkers-request
))
;//! \htmlinclude DebugMarkers-response.msg.html

(cl:defclass <DebugMarkers-response> (roslisp-msg-protocol:ros-message)
  ((markers_detected
    :reader markers_detected
    :initarg :markers_detected
    :type cl:boolean
    :initform cl:nil)
   (img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass DebugMarkers-response (<DebugMarkers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugMarkers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugMarkers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<DebugMarkers-response> is deprecated: use niryo_one_msgs-srv:DebugMarkers-response instead.")))

(cl:ensure-generic-function 'markers_detected-val :lambda-list '(m))
(cl:defmethod markers_detected-val ((m <DebugMarkers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:markers_detected-val is deprecated.  Use niryo_one_msgs-srv:markers_detected instead.")
  (markers_detected m))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <DebugMarkers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:img-val is deprecated.  Use niryo_one_msgs-srv:img instead.")
  (img m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugMarkers-response>) ostream)
  "Serializes a message object of type '<DebugMarkers-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'markers_detected) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugMarkers-response>) istream)
  "Deserializes a message object of type '<DebugMarkers-response>"
    (cl:setf (cl:slot-value msg 'markers_detected) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugMarkers-response>)))
  "Returns string type for a service object of type '<DebugMarkers-response>"
  "niryo_one_msgs/DebugMarkersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugMarkers-response)))
  "Returns string type for a service object of type 'DebugMarkers-response"
  "niryo_one_msgs/DebugMarkersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugMarkers-response>)))
  "Returns md5sum for a message object of type '<DebugMarkers-response>"
  "63758d5125879b809b9c2ee90cbc28ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugMarkers-response)))
  "Returns md5sum for a message object of type 'DebugMarkers-response"
  "63758d5125879b809b9c2ee90cbc28ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugMarkers-response>)))
  "Returns full string definition for message of type '<DebugMarkers-response>"
  (cl:format cl:nil "bool markers_detected~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugMarkers-response)))
  "Returns full string definition for message of type 'DebugMarkers-response"
  (cl:format cl:nil "bool markers_detected~%sensor_msgs/CompressedImage img~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugMarkers-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugMarkers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugMarkers-response
    (cl:cons ':markers_detected (markers_detected msg))
    (cl:cons ':img (img msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DebugMarkers)))
  'DebugMarkers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DebugMarkers)))
  'DebugMarkers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugMarkers)))
  "Returns string type for a service object of type '<DebugMarkers>"
  "niryo_one_msgs/DebugMarkers")