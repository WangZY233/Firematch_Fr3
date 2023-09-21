; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ManageSequence-request.msg.html

(cl:defclass <ManageSequence-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:integer
    :initform 0)
   (sequence_id
    :reader sequence_id
    :initarg :sequence_id
    :type cl:integer
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type niryo_one_msgs-msg:Sequence
    :initform (cl:make-instance 'niryo_one_msgs-msg:Sequence)))
)

(cl:defclass ManageSequence-request (<ManageSequence-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageSequence-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageSequence-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManageSequence-request> is deprecated: use niryo_one_msgs-srv:ManageSequence-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <ManageSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:cmd_type-val is deprecated.  Use niryo_one_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'sequence_id-val :lambda-list '(m))
(cl:defmethod sequence_id-val ((m <ManageSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:sequence_id-val is deprecated.  Use niryo_one_msgs-srv:sequence_id instead.")
  (sequence_id m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <ManageSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:sequence-val is deprecated.  Use niryo_one_msgs-srv:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageSequence-request>) ostream)
  "Serializes a message object of type '<ManageSequence-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sequence_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sequence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageSequence-request>) istream)
  "Deserializes a message object of type '<ManageSequence-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sequence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageSequence-request>)))
  "Returns string type for a service object of type '<ManageSequence-request>"
  "niryo_one_msgs/ManageSequenceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSequence-request)))
  "Returns string type for a service object of type 'ManageSequence-request"
  "niryo_one_msgs/ManageSequenceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageSequence-request>)))
  "Returns md5sum for a message object of type '<ManageSequence-request>"
  "10143a290fd01d09f121d3105d3730fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageSequence-request)))
  "Returns md5sum for a message object of type 'ManageSequence-request"
  "10143a290fd01d09f121d3105d3730fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageSequence-request>)))
  "Returns full string definition for message of type '<ManageSequence-request>"
  (cl:format cl:nil "int32 cmd_type~%~%int32 sequence_id~%niryo_one_msgs/Sequence sequence~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageSequence-request)))
  "Returns full string definition for message of type 'ManageSequence-request"
  (cl:format cl:nil "int32 cmd_type~%~%int32 sequence_id~%niryo_one_msgs/Sequence sequence~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageSequence-request>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sequence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageSequence-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageSequence-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':sequence_id (sequence_id msg))
    (cl:cons ':sequence (sequence msg))
))
;//! \htmlinclude ManageSequence-response.msg.html

(cl:defclass <ManageSequence-response> (roslisp-msg-protocol:ros-message)
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
   (sequence
    :reader sequence
    :initarg :sequence
    :type niryo_one_msgs-msg:Sequence
    :initform (cl:make-instance 'niryo_one_msgs-msg:Sequence)))
)

(cl:defclass ManageSequence-response (<ManageSequence-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageSequence-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageSequence-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManageSequence-response> is deprecated: use niryo_one_msgs-srv:ManageSequence-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageSequence-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageSequence-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <ManageSequence-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:sequence-val is deprecated.  Use niryo_one_msgs-srv:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageSequence-response>) ostream)
  "Serializes a message object of type '<ManageSequence-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sequence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageSequence-response>) istream)
  "Deserializes a message object of type '<ManageSequence-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sequence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageSequence-response>)))
  "Returns string type for a service object of type '<ManageSequence-response>"
  "niryo_one_msgs/ManageSequenceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSequence-response)))
  "Returns string type for a service object of type 'ManageSequence-response"
  "niryo_one_msgs/ManageSequenceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageSequence-response>)))
  "Returns md5sum for a message object of type '<ManageSequence-response>"
  "10143a290fd01d09f121d3105d3730fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageSequence-response)))
  "Returns md5sum for a message object of type 'ManageSequence-response"
  "10143a290fd01d09f121d3105d3730fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageSequence-response>)))
  "Returns full string definition for message of type '<ManageSequence-response>"
  (cl:format cl:nil "int32 status~%string message~%~%niryo_one_msgs/Sequence sequence~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageSequence-response)))
  "Returns full string definition for message of type 'ManageSequence-response"
  (cl:format cl:nil "int32 status~%string message~%~%niryo_one_msgs/Sequence sequence~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageSequence-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sequence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageSequence-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageSequence-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':sequence (sequence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageSequence)))
  'ManageSequence-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageSequence)))
  'ManageSequence-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSequence)))
  "Returns string type for a service object of type '<ManageSequence>"
  "niryo_one_msgs/ManageSequence")