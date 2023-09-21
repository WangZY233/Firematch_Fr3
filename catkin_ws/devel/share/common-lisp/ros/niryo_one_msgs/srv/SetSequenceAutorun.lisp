; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude SetSequenceAutorun-request.msg.html

(cl:defclass <SetSequenceAutorun-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (sequence_ids
    :reader sequence_ids
    :initarg :sequence_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetSequenceAutorun-request (<SetSequenceAutorun-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSequenceAutorun-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSequenceAutorun-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetSequenceAutorun-request> is deprecated: use niryo_one_msgs-srv:SetSequenceAutorun-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetSequenceAutorun-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:enable-val is deprecated.  Use niryo_one_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetSequenceAutorun-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:mode-val is deprecated.  Use niryo_one_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'sequence_ids-val :lambda-list '(m))
(cl:defmethod sequence_ids-val ((m <SetSequenceAutorun-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:sequence_ids-val is deprecated.  Use niryo_one_msgs-srv:sequence_ids instead.")
  (sequence_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSequenceAutorun-request>) ostream)
  "Serializes a message object of type '<SetSequenceAutorun-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sequence_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'sequence_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSequenceAutorun-request>) istream)
  "Deserializes a message object of type '<SetSequenceAutorun-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sequence_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sequence_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSequenceAutorun-request>)))
  "Returns string type for a service object of type '<SetSequenceAutorun-request>"
  "niryo_one_msgs/SetSequenceAutorunRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSequenceAutorun-request)))
  "Returns string type for a service object of type 'SetSequenceAutorun-request"
  "niryo_one_msgs/SetSequenceAutorunRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSequenceAutorun-request>)))
  "Returns md5sum for a message object of type '<SetSequenceAutorun-request>"
  "c7885cc63aba1de369f012805d9e0b4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSequenceAutorun-request)))
  "Returns md5sum for a message object of type 'SetSequenceAutorun-request"
  "c7885cc63aba1de369f012805d9e0b4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSequenceAutorun-request>)))
  "Returns full string definition for message of type '<SetSequenceAutorun-request>"
  (cl:format cl:nil "bool enable~%int32 mode~%int32[] sequence_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSequenceAutorun-request)))
  "Returns full string definition for message of type 'SetSequenceAutorun-request"
  (cl:format cl:nil "bool enable~%int32 mode~%int32[] sequence_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSequenceAutorun-request>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sequence_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSequenceAutorun-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSequenceAutorun-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':sequence_ids (sequence_ids msg))
))
;//! \htmlinclude SetSequenceAutorun-response.msg.html

(cl:defclass <SetSequenceAutorun-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetSequenceAutorun-response (<SetSequenceAutorun-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSequenceAutorun-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSequenceAutorun-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetSequenceAutorun-response> is deprecated: use niryo_one_msgs-srv:SetSequenceAutorun-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetSequenceAutorun-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetSequenceAutorun-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSequenceAutorun-response>) ostream)
  "Serializes a message object of type '<SetSequenceAutorun-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSequenceAutorun-response>) istream)
  "Deserializes a message object of type '<SetSequenceAutorun-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSequenceAutorun-response>)))
  "Returns string type for a service object of type '<SetSequenceAutorun-response>"
  "niryo_one_msgs/SetSequenceAutorunResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSequenceAutorun-response)))
  "Returns string type for a service object of type 'SetSequenceAutorun-response"
  "niryo_one_msgs/SetSequenceAutorunResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSequenceAutorun-response>)))
  "Returns md5sum for a message object of type '<SetSequenceAutorun-response>"
  "c7885cc63aba1de369f012805d9e0b4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSequenceAutorun-response)))
  "Returns md5sum for a message object of type 'SetSequenceAutorun-response"
  "c7885cc63aba1de369f012805d9e0b4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSequenceAutorun-response>)))
  "Returns full string definition for message of type '<SetSequenceAutorun-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSequenceAutorun-response)))
  "Returns full string definition for message of type 'SetSequenceAutorun-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSequenceAutorun-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSequenceAutorun-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSequenceAutorun-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSequenceAutorun)))
  'SetSequenceAutorun-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSequenceAutorun)))
  'SetSequenceAutorun-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSequenceAutorun)))
  "Returns string type for a service object of type '<SetSequenceAutorun>"
  "niryo_one_msgs/SetSequenceAutorun")