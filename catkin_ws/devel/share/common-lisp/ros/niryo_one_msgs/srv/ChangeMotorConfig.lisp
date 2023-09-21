; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ChangeMotorConfig-request.msg.html

(cl:defclass <ChangeMotorConfig-request> (roslisp-msg-protocol:ros-message)
  ((can_required_motor_id_list
    :reader can_required_motor_id_list
    :initarg :can_required_motor_id_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (dxl_required_motor_id_list
    :reader dxl_required_motor_id_list
    :initarg :dxl_required_motor_id_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ChangeMotorConfig-request (<ChangeMotorConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeMotorConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeMotorConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ChangeMotorConfig-request> is deprecated: use niryo_one_msgs-srv:ChangeMotorConfig-request instead.")))

(cl:ensure-generic-function 'can_required_motor_id_list-val :lambda-list '(m))
(cl:defmethod can_required_motor_id_list-val ((m <ChangeMotorConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:can_required_motor_id_list-val is deprecated.  Use niryo_one_msgs-srv:can_required_motor_id_list instead.")
  (can_required_motor_id_list m))

(cl:ensure-generic-function 'dxl_required_motor_id_list-val :lambda-list '(m))
(cl:defmethod dxl_required_motor_id_list-val ((m <ChangeMotorConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:dxl_required_motor_id_list-val is deprecated.  Use niryo_one_msgs-srv:dxl_required_motor_id_list instead.")
  (dxl_required_motor_id_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeMotorConfig-request>) ostream)
  "Serializes a message object of type '<ChangeMotorConfig-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'can_required_motor_id_list))))
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
   (cl:slot-value msg 'can_required_motor_id_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dxl_required_motor_id_list))))
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
   (cl:slot-value msg 'dxl_required_motor_id_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeMotorConfig-request>) istream)
  "Deserializes a message object of type '<ChangeMotorConfig-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'can_required_motor_id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'can_required_motor_id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dxl_required_motor_id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dxl_required_motor_id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeMotorConfig-request>)))
  "Returns string type for a service object of type '<ChangeMotorConfig-request>"
  "niryo_one_msgs/ChangeMotorConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMotorConfig-request)))
  "Returns string type for a service object of type 'ChangeMotorConfig-request"
  "niryo_one_msgs/ChangeMotorConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeMotorConfig-request>)))
  "Returns md5sum for a message object of type '<ChangeMotorConfig-request>"
  "4656a66d9c8c003dc0f8aa40d5770162")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeMotorConfig-request)))
  "Returns md5sum for a message object of type 'ChangeMotorConfig-request"
  "4656a66d9c8c003dc0f8aa40d5770162")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeMotorConfig-request>)))
  "Returns full string definition for message of type '<ChangeMotorConfig-request>"
  (cl:format cl:nil "int32[] can_required_motor_id_list~%int32[] dxl_required_motor_id_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeMotorConfig-request)))
  "Returns full string definition for message of type 'ChangeMotorConfig-request"
  (cl:format cl:nil "int32[] can_required_motor_id_list~%int32[] dxl_required_motor_id_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeMotorConfig-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'can_required_motor_id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dxl_required_motor_id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeMotorConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeMotorConfig-request
    (cl:cons ':can_required_motor_id_list (can_required_motor_id_list msg))
    (cl:cons ':dxl_required_motor_id_list (dxl_required_motor_id_list msg))
))
;//! \htmlinclude ChangeMotorConfig-response.msg.html

(cl:defclass <ChangeMotorConfig-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ChangeMotorConfig-response (<ChangeMotorConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeMotorConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeMotorConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ChangeMotorConfig-response> is deprecated: use niryo_one_msgs-srv:ChangeMotorConfig-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ChangeMotorConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeMotorConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeMotorConfig-response>) ostream)
  "Serializes a message object of type '<ChangeMotorConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeMotorConfig-response>) istream)
  "Deserializes a message object of type '<ChangeMotorConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeMotorConfig-response>)))
  "Returns string type for a service object of type '<ChangeMotorConfig-response>"
  "niryo_one_msgs/ChangeMotorConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMotorConfig-response)))
  "Returns string type for a service object of type 'ChangeMotorConfig-response"
  "niryo_one_msgs/ChangeMotorConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeMotorConfig-response>)))
  "Returns md5sum for a message object of type '<ChangeMotorConfig-response>"
  "4656a66d9c8c003dc0f8aa40d5770162")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeMotorConfig-response)))
  "Returns md5sum for a message object of type 'ChangeMotorConfig-response"
  "4656a66d9c8c003dc0f8aa40d5770162")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeMotorConfig-response>)))
  "Returns full string definition for message of type '<ChangeMotorConfig-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeMotorConfig-response)))
  "Returns full string definition for message of type 'ChangeMotorConfig-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeMotorConfig-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeMotorConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeMotorConfig-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeMotorConfig)))
  'ChangeMotorConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeMotorConfig)))
  'ChangeMotorConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMotorConfig)))
  "Returns string type for a service object of type '<ChangeMotorConfig>"
  "niryo_one_msgs/ChangeMotorConfig")