; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ChangeHardwareVersion-request.msg.html

(cl:defclass <ChangeHardwareVersion-request> (roslisp-msg-protocol:ros-message)
  ((old_version
    :reader old_version
    :initarg :old_version
    :type cl:integer
    :initform 0)
   (new_version
    :reader new_version
    :initarg :new_version
    :type cl:integer
    :initform 0))
)

(cl:defclass ChangeHardwareVersion-request (<ChangeHardwareVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeHardwareVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeHardwareVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ChangeHardwareVersion-request> is deprecated: use niryo_one_msgs-srv:ChangeHardwareVersion-request instead.")))

(cl:ensure-generic-function 'old_version-val :lambda-list '(m))
(cl:defmethod old_version-val ((m <ChangeHardwareVersion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:old_version-val is deprecated.  Use niryo_one_msgs-srv:old_version instead.")
  (old_version m))

(cl:ensure-generic-function 'new_version-val :lambda-list '(m))
(cl:defmethod new_version-val ((m <ChangeHardwareVersion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:new_version-val is deprecated.  Use niryo_one_msgs-srv:new_version instead.")
  (new_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeHardwareVersion-request>) ostream)
  "Serializes a message object of type '<ChangeHardwareVersion-request>"
  (cl:let* ((signed (cl:slot-value msg 'old_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'new_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeHardwareVersion-request>) istream)
  "Deserializes a message object of type '<ChangeHardwareVersion-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'old_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeHardwareVersion-request>)))
  "Returns string type for a service object of type '<ChangeHardwareVersion-request>"
  "niryo_one_msgs/ChangeHardwareVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHardwareVersion-request)))
  "Returns string type for a service object of type 'ChangeHardwareVersion-request"
  "niryo_one_msgs/ChangeHardwareVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeHardwareVersion-request>)))
  "Returns md5sum for a message object of type '<ChangeHardwareVersion-request>"
  "a236aed5507cea948ac43373e4211c23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeHardwareVersion-request)))
  "Returns md5sum for a message object of type 'ChangeHardwareVersion-request"
  "a236aed5507cea948ac43373e4211c23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeHardwareVersion-request>)))
  "Returns full string definition for message of type '<ChangeHardwareVersion-request>"
  (cl:format cl:nil "int32 old_version~%int32 new_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeHardwareVersion-request)))
  "Returns full string definition for message of type 'ChangeHardwareVersion-request"
  (cl:format cl:nil "int32 old_version~%int32 new_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeHardwareVersion-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeHardwareVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeHardwareVersion-request
    (cl:cons ':old_version (old_version msg))
    (cl:cons ':new_version (new_version msg))
))
;//! \htmlinclude ChangeHardwareVersion-response.msg.html

(cl:defclass <ChangeHardwareVersion-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ChangeHardwareVersion-response (<ChangeHardwareVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeHardwareVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeHardwareVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ChangeHardwareVersion-response> is deprecated: use niryo_one_msgs-srv:ChangeHardwareVersion-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ChangeHardwareVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeHardwareVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeHardwareVersion-response>) ostream)
  "Serializes a message object of type '<ChangeHardwareVersion-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeHardwareVersion-response>) istream)
  "Deserializes a message object of type '<ChangeHardwareVersion-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeHardwareVersion-response>)))
  "Returns string type for a service object of type '<ChangeHardwareVersion-response>"
  "niryo_one_msgs/ChangeHardwareVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHardwareVersion-response)))
  "Returns string type for a service object of type 'ChangeHardwareVersion-response"
  "niryo_one_msgs/ChangeHardwareVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeHardwareVersion-response>)))
  "Returns md5sum for a message object of type '<ChangeHardwareVersion-response>"
  "a236aed5507cea948ac43373e4211c23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeHardwareVersion-response)))
  "Returns md5sum for a message object of type 'ChangeHardwareVersion-response"
  "a236aed5507cea948ac43373e4211c23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeHardwareVersion-response>)))
  "Returns full string definition for message of type '<ChangeHardwareVersion-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeHardwareVersion-response)))
  "Returns full string definition for message of type 'ChangeHardwareVersion-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeHardwareVersion-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeHardwareVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeHardwareVersion-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeHardwareVersion)))
  'ChangeHardwareVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeHardwareVersion)))
  'ChangeHardwareVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHardwareVersion)))
  "Returns string type for a service object of type '<ChangeHardwareVersion>"
  "niryo_one_msgs/ChangeHardwareVersion")