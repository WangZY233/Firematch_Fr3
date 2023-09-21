; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetWorkspaceRatio-request.msg.html

(cl:defclass <GetWorkspaceRatio-request> (roslisp-msg-protocol:ros-message)
  ((workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform ""))
)

(cl:defclass GetWorkspaceRatio-request (<GetWorkspaceRatio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRatio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRatio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceRatio-request> is deprecated: use niryo_one_msgs-srv:GetWorkspaceRatio-request instead.")))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <GetWorkspaceRatio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:workspace-val is deprecated.  Use niryo_one_msgs-srv:workspace instead.")
  (workspace m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRatio-request>) ostream)
  "Serializes a message object of type '<GetWorkspaceRatio-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRatio-request>) istream)
  "Deserializes a message object of type '<GetWorkspaceRatio-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'workspace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'workspace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRatio-request>)))
  "Returns string type for a service object of type '<GetWorkspaceRatio-request>"
  "niryo_one_msgs/GetWorkspaceRatioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRatio-request)))
  "Returns string type for a service object of type 'GetWorkspaceRatio-request"
  "niryo_one_msgs/GetWorkspaceRatioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRatio-request>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRatio-request>"
  "ce70a1191ba3e011669c12b7ee6501e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRatio-request)))
  "Returns md5sum for a message object of type 'GetWorkspaceRatio-request"
  "ce70a1191ba3e011669c12b7ee6501e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRatio-request>)))
  "Returns full string definition for message of type '<GetWorkspaceRatio-request>"
  (cl:format cl:nil "string workspace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRatio-request)))
  "Returns full string definition for message of type 'GetWorkspaceRatio-request"
  (cl:format cl:nil "string workspace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRatio-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'workspace))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRatio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRatio-request
    (cl:cons ':workspace (workspace msg))
))
;//! \htmlinclude GetWorkspaceRatio-response.msg.html

(cl:defclass <GetWorkspaceRatio-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (ratio
    :reader ratio
    :initarg :ratio
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetWorkspaceRatio-response (<GetWorkspaceRatio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRatio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRatio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceRatio-response> is deprecated: use niryo_one_msgs-srv:GetWorkspaceRatio-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetWorkspaceRatio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetWorkspaceRatio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'ratio-val :lambda-list '(m))
(cl:defmethod ratio-val ((m <GetWorkspaceRatio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:ratio-val is deprecated.  Use niryo_one_msgs-srv:ratio instead.")
  (ratio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRatio-response>) ostream)
  "Serializes a message object of type '<GetWorkspaceRatio-response>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRatio-response>) istream)
  "Deserializes a message object of type '<GetWorkspaceRatio-response>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ratio) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRatio-response>)))
  "Returns string type for a service object of type '<GetWorkspaceRatio-response>"
  "niryo_one_msgs/GetWorkspaceRatioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRatio-response)))
  "Returns string type for a service object of type 'GetWorkspaceRatio-response"
  "niryo_one_msgs/GetWorkspaceRatioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRatio-response>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRatio-response>"
  "ce70a1191ba3e011669c12b7ee6501e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRatio-response)))
  "Returns md5sum for a message object of type 'GetWorkspaceRatio-response"
  "ce70a1191ba3e011669c12b7ee6501e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRatio-response>)))
  "Returns full string definition for message of type '<GetWorkspaceRatio-response>"
  (cl:format cl:nil "int32 status~%string message~%float32 ratio  # width/height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRatio-response)))
  "Returns full string definition for message of type 'GetWorkspaceRatio-response"
  (cl:format cl:nil "int32 status~%string message~%float32 ratio  # width/height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRatio-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRatio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRatio-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':ratio (ratio msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorkspaceRatio)))
  'GetWorkspaceRatio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorkspaceRatio)))
  'GetWorkspaceRatio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRatio)))
  "Returns string type for a service object of type '<GetWorkspaceRatio>"
  "niryo_one_msgs/GetWorkspaceRatio")