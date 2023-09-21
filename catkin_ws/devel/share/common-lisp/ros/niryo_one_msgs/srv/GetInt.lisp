; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetInt-request.msg.html

(cl:defclass <GetInt-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetInt-request (<GetInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetInt-request> is deprecated: use niryo_one_msgs-srv:GetInt-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInt-request>) ostream)
  "Serializes a message object of type '<GetInt-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInt-request>) istream)
  "Deserializes a message object of type '<GetInt-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInt-request>)))
  "Returns string type for a service object of type '<GetInt-request>"
  "niryo_one_msgs/GetIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInt-request)))
  "Returns string type for a service object of type 'GetInt-request"
  "niryo_one_msgs/GetIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInt-request>)))
  "Returns md5sum for a message object of type '<GetInt-request>"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInt-request)))
  "Returns md5sum for a message object of type 'GetInt-request"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInt-request>)))
  "Returns full string definition for message of type '<GetInt-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInt-request)))
  "Returns full string definition for message of type 'GetInt-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInt-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInt-request
))
;//! \htmlinclude GetInt-response.msg.html

(cl:defclass <GetInt-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass GetInt-response (<GetInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetInt-response> is deprecated: use niryo_one_msgs-srv:GetInt-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:value-val is deprecated.  Use niryo_one_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInt-response>) ostream)
  "Serializes a message object of type '<GetInt-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInt-response>) istream)
  "Deserializes a message object of type '<GetInt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInt-response>)))
  "Returns string type for a service object of type '<GetInt-response>"
  "niryo_one_msgs/GetIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInt-response)))
  "Returns string type for a service object of type 'GetInt-response"
  "niryo_one_msgs/GetIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInt-response>)))
  "Returns md5sum for a message object of type '<GetInt-response>"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInt-response)))
  "Returns md5sum for a message object of type 'GetInt-response"
  "b3087778e93fcd34cc8d65bc54e850d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInt-response>)))
  "Returns full string definition for message of type '<GetInt-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInt-response)))
  "Returns full string definition for message of type 'GetInt-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInt-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInt)))
  'GetInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInt)))
  'GetInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInt)))
  "Returns string type for a service object of type '<GetInt>"
  "niryo_one_msgs/GetInt")