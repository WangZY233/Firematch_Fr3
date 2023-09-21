; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ManagePosition-request.msg.html

(cl:defclass <ManagePosition-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:integer
    :initform 0)
   (position_name
    :reader position_name
    :initarg :position_name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type niryo_one_msgs-msg:Position
    :initform (cl:make-instance 'niryo_one_msgs-msg:Position)))
)

(cl:defclass ManagePosition-request (<ManagePosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagePosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagePosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManagePosition-request> is deprecated: use niryo_one_msgs-srv:ManagePosition-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <ManagePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:cmd_type-val is deprecated.  Use niryo_one_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'position_name-val :lambda-list '(m))
(cl:defmethod position_name-val ((m <ManagePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:position_name-val is deprecated.  Use niryo_one_msgs-srv:position_name instead.")
  (position_name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ManagePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:position-val is deprecated.  Use niryo_one_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagePosition-request>) ostream)
  "Serializes a message object of type '<ManagePosition-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagePosition-request>) istream)
  "Deserializes a message object of type '<ManagePosition-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagePosition-request>)))
  "Returns string type for a service object of type '<ManagePosition-request>"
  "niryo_one_msgs/ManagePositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePosition-request)))
  "Returns string type for a service object of type 'ManagePosition-request"
  "niryo_one_msgs/ManagePositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagePosition-request>)))
  "Returns md5sum for a message object of type '<ManagePosition-request>"
  "adf4e061b0eee7a4afcbede59727e52a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagePosition-request)))
  "Returns md5sum for a message object of type 'ManagePosition-request"
  "adf4e061b0eee7a4afcbede59727e52a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagePosition-request>)))
  "Returns full string definition for message of type '<ManagePosition-request>"
  (cl:format cl:nil "int32 cmd_type~%~%string position_name~%niryo_one_msgs/Position position~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagePosition-request)))
  "Returns full string definition for message of type 'ManagePosition-request"
  (cl:format cl:nil "int32 cmd_type~%~%string position_name~%niryo_one_msgs/Position position~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagePosition-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'position_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagePosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagePosition-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':position_name (position_name msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude ManagePosition-response.msg.html

(cl:defclass <ManagePosition-response> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type niryo_one_msgs-msg:Position
    :initform (cl:make-instance 'niryo_one_msgs-msg:Position)))
)

(cl:defclass ManagePosition-response (<ManagePosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagePosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagePosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ManagePosition-response> is deprecated: use niryo_one_msgs-srv:ManagePosition-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManagePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManagePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ManagePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:position-val is deprecated.  Use niryo_one_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagePosition-response>) ostream)
  "Serializes a message object of type '<ManagePosition-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagePosition-response>) istream)
  "Deserializes a message object of type '<ManagePosition-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagePosition-response>)))
  "Returns string type for a service object of type '<ManagePosition-response>"
  "niryo_one_msgs/ManagePositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePosition-response)))
  "Returns string type for a service object of type 'ManagePosition-response"
  "niryo_one_msgs/ManagePositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagePosition-response>)))
  "Returns md5sum for a message object of type '<ManagePosition-response>"
  "adf4e061b0eee7a4afcbede59727e52a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagePosition-response)))
  "Returns md5sum for a message object of type 'ManagePosition-response"
  "adf4e061b0eee7a4afcbede59727e52a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagePosition-response>)))
  "Returns full string definition for message of type '<ManagePosition-response>"
  (cl:format cl:nil "int32 status~%string message~%~%niryo_one_msgs/Position position ~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagePosition-response)))
  "Returns full string definition for message of type 'ManagePosition-response"
  (cl:format cl:nil "int32 status~%string message~%~%niryo_one_msgs/Position position ~%~%~%================================================================================~%MSG: niryo_one_msgs/Position~%string name~%~%float64[] joints ~%niryo_one_msgs/RPY rpy~%geometry_msgs/Point point~%geometry_msgs/Quaternion quaternion~%~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagePosition-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagePosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagePosition-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManagePosition)))
  'ManagePosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManagePosition)))
  'ManagePosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePosition)))
  "Returns string type for a service object of type '<ManagePosition>"
  "niryo_one_msgs/ManagePosition")