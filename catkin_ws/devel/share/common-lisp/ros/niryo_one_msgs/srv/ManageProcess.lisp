; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ManageProcess-request.msg.html

(cl:defclass <ManageProcess-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ManageProcess-request (<ManageProcess-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageProcess-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageProcess-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManageProcess-request> is deprecated: use niryo_one_msgs-srv:ManageProcess-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ManageProcess-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:action-val is deprecated.  Use niryo_one_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ManageProcess-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:name-val is deprecated.  Use niryo_one_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageProcess-request>) ostream)
  "Serializes a message object of type '<ManageProcess-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageProcess-request>) istream)
  "Deserializes a message object of type '<ManageProcess-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageProcess-request>)))
  "Returns string type for a service object of type '<ManageProcess-request>"
  "niryo_one_msgs/ManageProcessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProcess-request)))
  "Returns string type for a service object of type 'ManageProcess-request"
  "niryo_one_msgs/ManageProcessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageProcess-request>)))
  "Returns md5sum for a message object of type '<ManageProcess-request>"
  "ed541b1426d7fc8f78be14b5e4b306cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageProcess-request)))
  "Returns md5sum for a message object of type 'ManageProcess-request"
  "ed541b1426d7fc8f78be14b5e4b306cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageProcess-request>)))
  "Returns full string definition for message of type '<ManageProcess-request>"
  (cl:format cl:nil "~%# start, stop, restart, kill, start_all, stop_all~%~%uint8 action~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageProcess-request)))
  "Returns full string definition for message of type 'ManageProcess-request"
  (cl:format cl:nil "~%# start, stop, restart, kill, start_all, stop_all~%~%uint8 action~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageProcess-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageProcess-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageProcess-request
    (cl:cons ':action (action msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ManageProcess-response.msg.html

(cl:defclass <ManageProcess-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ManageProcess-response (<ManageProcess-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageProcess-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageProcess-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManageProcess-response> is deprecated: use niryo_one_msgs-srv:ManageProcess-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageProcess-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageProcess-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageProcess-response>) ostream)
  "Serializes a message object of type '<ManageProcess-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageProcess-response>) istream)
  "Deserializes a message object of type '<ManageProcess-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageProcess-response>)))
  "Returns string type for a service object of type '<ManageProcess-response>"
  "niryo_one_msgs/ManageProcessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProcess-response)))
  "Returns string type for a service object of type 'ManageProcess-response"
  "niryo_one_msgs/ManageProcessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageProcess-response>)))
  "Returns md5sum for a message object of type '<ManageProcess-response>"
  "ed541b1426d7fc8f78be14b5e4b306cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageProcess-response)))
  "Returns md5sum for a message object of type 'ManageProcess-response"
  "ed541b1426d7fc8f78be14b5e4b306cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageProcess-response>)))
  "Returns full string definition for message of type '<ManageProcess-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageProcess-response)))
  "Returns full string definition for message of type 'ManageProcess-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageProcess-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageProcess-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageProcess-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageProcess)))
  'ManageProcess-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageProcess)))
  'ManageProcess-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProcess)))
  "Returns string type for a service object of type '<ManageProcess>"
  "niryo_one_msgs/ManageProcess")