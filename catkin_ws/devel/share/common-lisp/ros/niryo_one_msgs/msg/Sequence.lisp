; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude Sequence.msg.html

(cl:defclass <Sequence> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (created
    :reader created
    :initarg :created
    :type cl:integer
    :initform 0)
   (updated
    :reader updated
    :initarg :updated
    :type cl:integer
    :initform 0)
   (blockly_xml
    :reader blockly_xml
    :initarg :blockly_xml
    :type cl:string
    :initform "")
   (python_code
    :reader python_code
    :initarg :python_code
    :type cl:string
    :initform ""))
)

(cl:defclass Sequence (<Sequence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sequence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sequence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<Sequence> is deprecated: use niryo_one_msgs-msg:Sequence instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:id-val is deprecated.  Use niryo_one_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:name-val is deprecated.  Use niryo_one_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:description-val is deprecated.  Use niryo_one_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'created-val :lambda-list '(m))
(cl:defmethod created-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:created-val is deprecated.  Use niryo_one_msgs-msg:created instead.")
  (created m))

(cl:ensure-generic-function 'updated-val :lambda-list '(m))
(cl:defmethod updated-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:updated-val is deprecated.  Use niryo_one_msgs-msg:updated instead.")
  (updated m))

(cl:ensure-generic-function 'blockly_xml-val :lambda-list '(m))
(cl:defmethod blockly_xml-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:blockly_xml-val is deprecated.  Use niryo_one_msgs-msg:blockly_xml instead.")
  (blockly_xml m))

(cl:ensure-generic-function 'python_code-val :lambda-list '(m))
(cl:defmethod python_code-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:python_code-val is deprecated.  Use niryo_one_msgs-msg:python_code instead.")
  (python_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sequence>) ostream)
  "Serializes a message object of type '<Sequence>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let* ((signed (cl:slot-value msg 'created)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'updated)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'blockly_xml))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'blockly_xml))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'python_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'python_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sequence>) istream)
  "Deserializes a message object of type '<Sequence>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'created) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'updated) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blockly_xml) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'blockly_xml) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'python_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'python_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sequence>)))
  "Returns string type for a message object of type '<Sequence>"
  "niryo_one_msgs/Sequence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sequence)))
  "Returns string type for a message object of type 'Sequence"
  "niryo_one_msgs/Sequence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sequence>)))
  "Returns md5sum for a message object of type '<Sequence>"
  "f6a77265c058342138b72e566370ac7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sequence)))
  "Returns md5sum for a message object of type 'Sequence"
  "f6a77265c058342138b72e566370ac7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sequence>)))
  "Returns full string definition for message of type '<Sequence>"
  (cl:format cl:nil "int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sequence)))
  "Returns full string definition for message of type 'Sequence"
  (cl:format cl:nil "int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sequence>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4
     4
     4 (cl:length (cl:slot-value msg 'blockly_xml))
     4 (cl:length (cl:slot-value msg 'python_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sequence>))
  "Converts a ROS message object to a list"
  (cl:list 'Sequence
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':created (created msg))
    (cl:cons ':updated (updated msg))
    (cl:cons ':blockly_xml (blockly_xml msg))
    (cl:cons ':python_code (python_code msg))
))
