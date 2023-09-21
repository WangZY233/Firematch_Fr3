; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude SendCustomDxlValue-request.msg.html

(cl:defclass <SendCustomDxlValue-request> (roslisp-msg-protocol:ros-message)
  ((motor_type
    :reader motor_type
    :initarg :motor_type
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (reg_address
    :reader reg_address
    :initarg :reg_address
    :type cl:integer
    :initform 0)
   (byte_number
    :reader byte_number
    :initarg :byte_number
    :type cl:integer
    :initform 0))
)

(cl:defclass SendCustomDxlValue-request (<SendCustomDxlValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCustomDxlValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCustomDxlValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SendCustomDxlValue-request> is deprecated: use niryo_one_msgs-srv:SendCustomDxlValue-request instead.")))

(cl:ensure-generic-function 'motor_type-val :lambda-list '(m))
(cl:defmethod motor_type-val ((m <SendCustomDxlValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:motor_type-val is deprecated.  Use niryo_one_msgs-srv:motor_type instead.")
  (motor_type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SendCustomDxlValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SendCustomDxlValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:value-val is deprecated.  Use niryo_one_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'reg_address-val :lambda-list '(m))
(cl:defmethod reg_address-val ((m <SendCustomDxlValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:reg_address-val is deprecated.  Use niryo_one_msgs-srv:reg_address instead.")
  (reg_address m))

(cl:ensure-generic-function 'byte_number-val :lambda-list '(m))
(cl:defmethod byte_number-val ((m <SendCustomDxlValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:byte_number-val is deprecated.  Use niryo_one_msgs-srv:byte_number instead.")
  (byte_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCustomDxlValue-request>) ostream)
  "Serializes a message object of type '<SendCustomDxlValue-request>"
  (cl:let* ((signed (cl:slot-value msg 'motor_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_address)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'byte_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCustomDxlValue-request>) istream)
  "Deserializes a message object of type '<SendCustomDxlValue-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_address) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'byte_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCustomDxlValue-request>)))
  "Returns string type for a service object of type '<SendCustomDxlValue-request>"
  "niryo_one_msgs/SendCustomDxlValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCustomDxlValue-request)))
  "Returns string type for a service object of type 'SendCustomDxlValue-request"
  "niryo_one_msgs/SendCustomDxlValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCustomDxlValue-request>)))
  "Returns md5sum for a message object of type '<SendCustomDxlValue-request>"
  "60887d5c990ef4cc959cd4f3646b638d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCustomDxlValue-request)))
  "Returns md5sum for a message object of type 'SendCustomDxlValue-request"
  "60887d5c990ef4cc959cd4f3646b638d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCustomDxlValue-request>)))
  "Returns full string definition for message of type '<SendCustomDxlValue-request>"
  (cl:format cl:nil "# Check XL-320 and XL-430 reference doc for~%# the complete register table~%~%int32 motor_type # 1 (XL-320) or 2 (XL-430)~%uint8 id~%int32 value~%int32 reg_address~%int32 byte_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCustomDxlValue-request)))
  "Returns full string definition for message of type 'SendCustomDxlValue-request"
  (cl:format cl:nil "# Check XL-320 and XL-430 reference doc for~%# the complete register table~%~%int32 motor_type # 1 (XL-320) or 2 (XL-430)~%uint8 id~%int32 value~%int32 reg_address~%int32 byte_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCustomDxlValue-request>))
  (cl:+ 0
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCustomDxlValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCustomDxlValue-request
    (cl:cons ':motor_type (motor_type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
    (cl:cons ':reg_address (reg_address msg))
    (cl:cons ':byte_number (byte_number msg))
))
;//! \htmlinclude SendCustomDxlValue-response.msg.html

(cl:defclass <SendCustomDxlValue-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SendCustomDxlValue-response (<SendCustomDxlValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCustomDxlValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCustomDxlValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SendCustomDxlValue-response> is deprecated: use niryo_one_msgs-srv:SendCustomDxlValue-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SendCustomDxlValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SendCustomDxlValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCustomDxlValue-response>) ostream)
  "Serializes a message object of type '<SendCustomDxlValue-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCustomDxlValue-response>) istream)
  "Deserializes a message object of type '<SendCustomDxlValue-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCustomDxlValue-response>)))
  "Returns string type for a service object of type '<SendCustomDxlValue-response>"
  "niryo_one_msgs/SendCustomDxlValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCustomDxlValue-response)))
  "Returns string type for a service object of type 'SendCustomDxlValue-response"
  "niryo_one_msgs/SendCustomDxlValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCustomDxlValue-response>)))
  "Returns md5sum for a message object of type '<SendCustomDxlValue-response>"
  "60887d5c990ef4cc959cd4f3646b638d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCustomDxlValue-response)))
  "Returns md5sum for a message object of type 'SendCustomDxlValue-response"
  "60887d5c990ef4cc959cd4f3646b638d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCustomDxlValue-response>)))
  "Returns full string definition for message of type '<SendCustomDxlValue-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCustomDxlValue-response)))
  "Returns full string definition for message of type 'SendCustomDxlValue-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCustomDxlValue-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCustomDxlValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCustomDxlValue-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendCustomDxlValue)))
  'SendCustomDxlValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendCustomDxlValue)))
  'SendCustomDxlValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCustomDxlValue)))
  "Returns string type for a service object of type '<SendCustomDxlValue>"
  "niryo_one_msgs/SendCustomDxlValue")