; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude EditGrip-request.msg.html

(cl:defclass <EditGrip-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform "")
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type niryo_one_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_one_msgs-msg:RobotState)))
)

(cl:defclass EditGrip-request (<EditGrip-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditGrip-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditGrip-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<EditGrip-request> is deprecated: use niryo_one_msgs-srv:EditGrip-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <EditGrip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:cmd-val is deprecated.  Use niryo_one_msgs-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EditGrip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:name-val is deprecated.  Use niryo_one_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <EditGrip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:workspace-val is deprecated.  Use niryo_one_msgs-srv:workspace instead.")
  (workspace m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <EditGrip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:robot_pose-val is deprecated.  Use niryo_one_msgs-srv:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditGrip-request>)))
    "Constants for message type '<EditGrip-request>"
  '((:CREATE . 1)
    (:REMOVE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditGrip-request)))
    "Constants for message type 'EditGrip-request"
  '((:CREATE . 1)
    (:REMOVE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditGrip-request>) ostream)
  "Serializes a message object of type '<EditGrip-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditGrip-request>) istream)
  "Deserializes a message object of type '<EditGrip-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'workspace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'workspace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditGrip-request>)))
  "Returns string type for a service object of type '<EditGrip-request>"
  "niryo_one_msgs/EditGripRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditGrip-request)))
  "Returns string type for a service object of type 'EditGrip-request"
  "niryo_one_msgs/EditGripRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditGrip-request>)))
  "Returns md5sum for a message object of type '<EditGrip-request>"
  "7940ed6d33c2b11259d93351ad8743b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditGrip-request)))
  "Returns md5sum for a message object of type 'EditGrip-request"
  "7940ed6d33c2b11259d93351ad8743b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditGrip-request>)))
  "Returns full string definition for message of type '<EditGrip-request>"
  (cl:format cl:nil "int32 CREATE = 1~%int32 REMOVE = -1~%~%int32 cmd~%string name~%string workspace~%niryo_one_msgs/RobotState robot_pose~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditGrip-request)))
  "Returns full string definition for message of type 'EditGrip-request"
  (cl:format cl:nil "int32 CREATE = 1~%int32 REMOVE = -1~%~%int32 cmd~%string name~%string workspace~%niryo_one_msgs/RobotState robot_pose~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditGrip-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'workspace))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditGrip-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditGrip-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':name (name msg))
    (cl:cons ':workspace (workspace msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
;//! \htmlinclude EditGrip-response.msg.html

(cl:defclass <EditGrip-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EditGrip-response (<EditGrip-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditGrip-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditGrip-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<EditGrip-response> is deprecated: use niryo_one_msgs-srv:EditGrip-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EditGrip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EditGrip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditGrip-response>) ostream)
  "Serializes a message object of type '<EditGrip-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditGrip-response>) istream)
  "Deserializes a message object of type '<EditGrip-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditGrip-response>)))
  "Returns string type for a service object of type '<EditGrip-response>"
  "niryo_one_msgs/EditGripResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditGrip-response)))
  "Returns string type for a service object of type 'EditGrip-response"
  "niryo_one_msgs/EditGripResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditGrip-response>)))
  "Returns md5sum for a message object of type '<EditGrip-response>"
  "7940ed6d33c2b11259d93351ad8743b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditGrip-response)))
  "Returns md5sum for a message object of type 'EditGrip-response"
  "7940ed6d33c2b11259d93351ad8743b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditGrip-response>)))
  "Returns full string definition for message of type '<EditGrip-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditGrip-response)))
  "Returns full string definition for message of type 'EditGrip-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditGrip-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditGrip-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditGrip-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditGrip)))
  'EditGrip-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditGrip)))
  'EditGrip-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditGrip)))
  "Returns string type for a service object of type '<EditGrip>"
  "niryo_one_msgs/EditGrip")