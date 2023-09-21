; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetPositionList-request.msg.html

(cl:defclass <GetPositionList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPositionList-request (<GetPositionList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPositionList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPositionList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetPositionList-request> is deprecated: use niryo_one_msgs-srv:GetPositionList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPositionList-request>) ostream)
  "Serializes a message object of type '<GetPositionList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPositionList-request>) istream)
  "Deserializes a message object of type '<GetPositionList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPositionList-request>)))
  "Returns string type for a service object of type '<GetPositionList-request>"
  "niryo_one_msgs/GetPositionListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPositionList-request)))
  "Returns string type for a service object of type 'GetPositionList-request"
  "niryo_one_msgs/GetPositionListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPositionList-request>)))
  "Returns md5sum for a message object of type '<GetPositionList-request>"
  "94fc33768181f413c5377ded0d0f7df2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPositionList-request)))
  "Returns md5sum for a message object of type 'GetPositionList-request"
  "94fc33768181f413c5377ded0d0f7df2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPositionList-request>)))
  "Returns full string definition for message of type '<GetPositionList-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPositionList-request)))
  "Returns full string definition for message of type 'GetPositionList-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPositionList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPositionList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPositionList-request
))
;//! \htmlinclude GetPositionList-response.msg.html

(cl:defclass <GetPositionList-response> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector niryo_one_msgs-msg:Position)
   :initform (cl:make-array 0 :element-type 'niryo_one_msgs-msg:Position :initial-element (cl:make-instance 'niryo_one_msgs-msg:Position))))
)

(cl:defclass GetPositionList-response (<GetPositionList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPositionList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPositionList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetPositionList-response> is deprecated: use niryo_one_msgs-srv:GetPositionList-response instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <GetPositionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:positions-val is deprecated.  Use niryo_one_msgs-srv:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPositionList-response>) ostream)
  "Serializes a message object of type '<GetPositionList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPositionList-response>) istream)
  "Deserializes a message object of type '<GetPositionList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_one_msgs-msg:Position))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPositionList-response>)))
  "Returns string type for a service object of type '<GetPositionList-response>"
  "niryo_one_msgs/GetPositionListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPositionList-response)))
  "Returns string type for a service object of type 'GetPositionList-response"
  "niryo_one_msgs/GetPositionListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPositionList-response>)))
  "Returns md5sum for a message object of type '<GetPositionList-response>"
  "94fc33768181f413c5377ded0d0f7df2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPositionList-response)))
  "Returns md5sum for a message object of type 'GetPositionList-response"
  "94fc33768181f413c5377ded0d0f7df2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPositionList-response>)))
  "Returns full string definition for message of type '<GetPositionList-response>"
  (cl:format cl:nil "niryo_one_msgs/Position[] positions~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPositionList-response)))
  "Returns full string definition for message of type 'GetPositionList-response"
  (cl:format cl:nil "niryo_one_msgs/Position[] positions~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPositionList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPositionList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPositionList-response
    (cl:cons ':positions (positions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPositionList)))
  'GetPositionList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPositionList)))
  'GetPositionList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPositionList)))
  "Returns string type for a service object of type '<GetPositionList>"
  "niryo_one_msgs/GetPositionList")