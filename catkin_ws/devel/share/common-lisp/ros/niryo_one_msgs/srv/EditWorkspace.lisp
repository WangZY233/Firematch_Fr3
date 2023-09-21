; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude EditWorkspace-request.msg.html

(cl:defclass <EditWorkspace-request> (roslisp-msg-protocol:ros-message)
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
   (pose_origin
    :reader pose_origin
    :initarg :pose_origin
    :type niryo_one_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_one_msgs-msg:RobotState))
   (pose_1
    :reader pose_1
    :initarg :pose_1
    :type niryo_one_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_one_msgs-msg:RobotState))
   (pose_2
    :reader pose_2
    :initarg :pose_2
    :type niryo_one_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_one_msgs-msg:RobotState))
   (pose_3
    :reader pose_3
    :initarg :pose_3
    :type niryo_one_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_one_msgs-msg:RobotState)))
)

(cl:defclass EditWorkspace-request (<EditWorkspace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditWorkspace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditWorkspace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<EditWorkspace-request> is deprecated: use niryo_one_msgs-srv:EditWorkspace-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:cmd-val is deprecated.  Use niryo_one_msgs-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:name-val is deprecated.  Use niryo_one_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'pose_origin-val :lambda-list '(m))
(cl:defmethod pose_origin-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_origin-val is deprecated.  Use niryo_one_msgs-srv:pose_origin instead.")
  (pose_origin m))

(cl:ensure-generic-function 'pose_1-val :lambda-list '(m))
(cl:defmethod pose_1-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_1-val is deprecated.  Use niryo_one_msgs-srv:pose_1 instead.")
  (pose_1 m))

(cl:ensure-generic-function 'pose_2-val :lambda-list '(m))
(cl:defmethod pose_2-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_2-val is deprecated.  Use niryo_one_msgs-srv:pose_2 instead.")
  (pose_2 m))

(cl:ensure-generic-function 'pose_3-val :lambda-list '(m))
(cl:defmethod pose_3-val ((m <EditWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_3-val is deprecated.  Use niryo_one_msgs-srv:pose_3 instead.")
  (pose_3 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditWorkspace-request>)))
    "Constants for message type '<EditWorkspace-request>"
  '((:CREATE . 1)
    (:REMOVE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditWorkspace-request)))
    "Constants for message type 'EditWorkspace-request"
  '((:CREATE . 1)
    (:REMOVE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditWorkspace-request>) ostream)
  "Serializes a message object of type '<EditWorkspace-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditWorkspace-request>) istream)
  "Deserializes a message object of type '<EditWorkspace-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditWorkspace-request>)))
  "Returns string type for a service object of type '<EditWorkspace-request>"
  "niryo_one_msgs/EditWorkspaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditWorkspace-request)))
  "Returns string type for a service object of type 'EditWorkspace-request"
  "niryo_one_msgs/EditWorkspaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditWorkspace-request>)))
  "Returns md5sum for a message object of type '<EditWorkspace-request>"
  "d54856ae48391661101e9b86f647a340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditWorkspace-request)))
  "Returns md5sum for a message object of type 'EditWorkspace-request"
  "d54856ae48391661101e9b86f647a340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditWorkspace-request>)))
  "Returns full string definition for message of type '<EditWorkspace-request>"
  (cl:format cl:nil "int32 CREATE = 1~%int32 REMOVE = -1~%~%int32 cmd~%string name~%niryo_one_msgs/RobotState pose_origin~%niryo_one_msgs/RobotState pose_1~%niryo_one_msgs/RobotState pose_2~%niryo_one_msgs/RobotState pose_3~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditWorkspace-request)))
  "Returns full string definition for message of type 'EditWorkspace-request"
  (cl:format cl:nil "int32 CREATE = 1~%int32 REMOVE = -1~%~%int32 cmd~%string name~%niryo_one_msgs/RobotState pose_origin~%niryo_one_msgs/RobotState pose_1~%niryo_one_msgs/RobotState pose_2~%niryo_one_msgs/RobotState pose_3~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditWorkspace-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditWorkspace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditWorkspace-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':name (name msg))
    (cl:cons ':pose_origin (pose_origin msg))
    (cl:cons ':pose_1 (pose_1 msg))
    (cl:cons ':pose_2 (pose_2 msg))
    (cl:cons ':pose_3 (pose_3 msg))
))
;//! \htmlinclude EditWorkspace-response.msg.html

(cl:defclass <EditWorkspace-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EditWorkspace-response (<EditWorkspace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditWorkspace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditWorkspace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<EditWorkspace-response> is deprecated: use niryo_one_msgs-srv:EditWorkspace-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EditWorkspace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EditWorkspace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditWorkspace-response>) ostream)
  "Serializes a message object of type '<EditWorkspace-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditWorkspace-response>) istream)
  "Deserializes a message object of type '<EditWorkspace-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditWorkspace-response>)))
  "Returns string type for a service object of type '<EditWorkspace-response>"
  "niryo_one_msgs/EditWorkspaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditWorkspace-response)))
  "Returns string type for a service object of type 'EditWorkspace-response"
  "niryo_one_msgs/EditWorkspaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditWorkspace-response>)))
  "Returns md5sum for a message object of type '<EditWorkspace-response>"
  "d54856ae48391661101e9b86f647a340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditWorkspace-response)))
  "Returns md5sum for a message object of type 'EditWorkspace-response"
  "d54856ae48391661101e9b86f647a340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditWorkspace-response>)))
  "Returns full string definition for message of type '<EditWorkspace-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditWorkspace-response)))
  "Returns full string definition for message of type 'EditWorkspace-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditWorkspace-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditWorkspace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditWorkspace-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditWorkspace)))
  'EditWorkspace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditWorkspace)))
  'EditWorkspace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditWorkspace)))
  "Returns string type for a service object of type '<EditWorkspace>"
  "niryo_one_msgs/EditWorkspace")