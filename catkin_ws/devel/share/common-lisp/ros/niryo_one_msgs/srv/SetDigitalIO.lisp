; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude SetDigitalIO-request.msg.html

(cl:defclass <SetDigitalIO-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetDigitalIO-request (<SetDigitalIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetDigitalIO-request> is deprecated: use niryo_one_msgs-srv:SetDigitalIO-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetDigitalIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pin-val is deprecated.  Use niryo_one_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetDigitalIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:value-val is deprecated.  Use niryo_one_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalIO-request>) ostream)
  "Serializes a message object of type '<SetDigitalIO-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalIO-request>) istream)
  "Deserializes a message object of type '<SetDigitalIO-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalIO-request>)))
  "Returns string type for a service object of type '<SetDigitalIO-request>"
  "niryo_one_msgs/SetDigitalIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalIO-request)))
  "Returns string type for a service object of type 'SetDigitalIO-request"
  "niryo_one_msgs/SetDigitalIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalIO-request>)))
  "Returns md5sum for a message object of type '<SetDigitalIO-request>"
  "58756075ba59c34125d6331e8a8727d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalIO-request)))
  "Returns md5sum for a message object of type 'SetDigitalIO-request"
  "58756075ba59c34125d6331e8a8727d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalIO-request>)))
  "Returns full string definition for message of type '<SetDigitalIO-request>"
  (cl:format cl:nil "uint8 pin~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalIO-request)))
  "Returns full string definition for message of type 'SetDigitalIO-request"
  (cl:format cl:nil "uint8 pin~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalIO-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalIO-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetDigitalIO-response.msg.html

(cl:defclass <SetDigitalIO-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetDigitalIO-response (<SetDigitalIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetDigitalIO-response> is deprecated: use niryo_one_msgs-srv:SetDigitalIO-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetDigitalIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetDigitalIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalIO-response>) ostream)
  "Serializes a message object of type '<SetDigitalIO-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalIO-response>) istream)
  "Deserializes a message object of type '<SetDigitalIO-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalIO-response>)))
  "Returns string type for a service object of type '<SetDigitalIO-response>"
  "niryo_one_msgs/SetDigitalIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalIO-response)))
  "Returns string type for a service object of type 'SetDigitalIO-response"
  "niryo_one_msgs/SetDigitalIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalIO-response>)))
  "Returns md5sum for a message object of type '<SetDigitalIO-response>"
  "58756075ba59c34125d6331e8a8727d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalIO-response)))
  "Returns md5sum for a message object of type 'SetDigitalIO-response"
  "58756075ba59c34125d6331e8a8727d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalIO-response>)))
  "Returns full string definition for message of type '<SetDigitalIO-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalIO-response)))
  "Returns full string definition for message of type 'SetDigitalIO-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalIO-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalIO-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDigitalIO)))
  'SetDigitalIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDigitalIO)))
  'SetDigitalIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalIO)))
  "Returns string type for a service object of type '<SetDigitalIO>"
  "niryo_one_msgs/SetDigitalIO")