; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude PingDxlTool-request.msg.html

(cl:defclass <PingDxlTool-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass PingDxlTool-request (<PingDxlTool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PingDxlTool-request> is deprecated: use niryo_one_msgs-srv:PingDxlTool-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PingDxlTool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PingDxlTool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:name-val is deprecated.  Use niryo_one_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-request>) ostream)
  "Serializes a message object of type '<PingDxlTool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-request>) istream)
  "Deserializes a message object of type '<PingDxlTool-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-request>)))
  "Returns string type for a service object of type '<PingDxlTool-request>"
  "niryo_one_msgs/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-request)))
  "Returns string type for a service object of type 'PingDxlTool-request"
  "niryo_one_msgs/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-request>)))
  "Returns md5sum for a message object of type '<PingDxlTool-request>"
  "7c200c402935dab5cf534afa12896068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-request)))
  "Returns md5sum for a message object of type 'PingDxlTool-request"
  "7c200c402935dab5cf534afa12896068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-request>)))
  "Returns full string definition for message of type '<PingDxlTool-request>"
  (cl:format cl:nil "uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-request)))
  "Returns full string definition for message of type 'PingDxlTool-request"
  (cl:format cl:nil "uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-request
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude PingDxlTool-response.msg.html

(cl:defclass <PingDxlTool-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PingDxlTool-response (<PingDxlTool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PingDxlTool-response> is deprecated: use niryo_one_msgs-srv:PingDxlTool-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PingDxlTool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:state-val is deprecated.  Use niryo_one_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-response>) ostream)
  "Serializes a message object of type '<PingDxlTool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-response>) istream)
  "Deserializes a message object of type '<PingDxlTool-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-response>)))
  "Returns string type for a service object of type '<PingDxlTool-response>"
  "niryo_one_msgs/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-response)))
  "Returns string type for a service object of type 'PingDxlTool-response"
  "niryo_one_msgs/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-response>)))
  "Returns md5sum for a message object of type '<PingDxlTool-response>"
  "7c200c402935dab5cf534afa12896068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-response)))
  "Returns md5sum for a message object of type 'PingDxlTool-response"
  "7c200c402935dab5cf534afa12896068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-response>)))
  "Returns full string definition for message of type '<PingDxlTool-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-response)))
  "Returns full string definition for message of type 'PingDxlTool-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool)))
  "Returns string type for a service object of type '<PingDxlTool>"
  "niryo_one_msgs/PingDxlTool")