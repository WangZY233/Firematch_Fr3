; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetWorkspaceRobotPoses-request.msg.html

(cl:defclass <GetWorkspaceRobotPoses-request> (roslisp-msg-protocol:ros-message)
  ((workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform ""))
)

(cl:defclass GetWorkspaceRobotPoses-request (<GetWorkspaceRobotPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRobotPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRobotPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceRobotPoses-request> is deprecated: use niryo_one_msgs-srv:GetWorkspaceRobotPoses-request instead.")))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <GetWorkspaceRobotPoses-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:workspace-val is deprecated.  Use niryo_one_msgs-srv:workspace instead.")
  (workspace m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRobotPoses-request>) ostream)
  "Serializes a message object of type '<GetWorkspaceRobotPoses-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRobotPoses-request>) istream)
  "Deserializes a message object of type '<GetWorkspaceRobotPoses-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses-request>"
  "niryo_one_msgs/GetWorkspaceRobotPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns string type for a service object of type 'GetWorkspaceRobotPoses-request"
  "niryo_one_msgs/GetWorkspaceRobotPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRobotPoses-request>"
  "280aaac02707bfb63e891c5f74a0b7c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns md5sum for a message object of type 'GetWorkspaceRobotPoses-request"
  "280aaac02707bfb63e891c5f74a0b7c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns full string definition for message of type '<GetWorkspaceRobotPoses-request>"
  (cl:format cl:nil "string workspace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns full string definition for message of type 'GetWorkspaceRobotPoses-request"
  (cl:format cl:nil "string workspace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRobotPoses-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'workspace))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRobotPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRobotPoses-request
    (cl:cons ':workspace (workspace msg))
))
;//! \htmlinclude GetWorkspaceRobotPoses-response.msg.html

(cl:defclass <GetWorkspaceRobotPoses-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetWorkspaceRobotPoses-response (<GetWorkspaceRobotPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRobotPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRobotPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceRobotPoses-response> is deprecated: use niryo_one_msgs-srv:GetWorkspaceRobotPoses-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'pose_origin-val :lambda-list '(m))
(cl:defmethod pose_origin-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_origin-val is deprecated.  Use niryo_one_msgs-srv:pose_origin instead.")
  (pose_origin m))

(cl:ensure-generic-function 'pose_1-val :lambda-list '(m))
(cl:defmethod pose_1-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_1-val is deprecated.  Use niryo_one_msgs-srv:pose_1 instead.")
  (pose_1 m))

(cl:ensure-generic-function 'pose_2-val :lambda-list '(m))
(cl:defmethod pose_2-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_2-val is deprecated.  Use niryo_one_msgs-srv:pose_2 instead.")
  (pose_2 m))

(cl:ensure-generic-function 'pose_3-val :lambda-list '(m))
(cl:defmethod pose_3-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pose_3-val is deprecated.  Use niryo_one_msgs-srv:pose_3 instead.")
  (pose_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRobotPoses-response>) ostream)
  "Serializes a message object of type '<GetWorkspaceRobotPoses-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRobotPoses-response>) istream)
  "Deserializes a message object of type '<GetWorkspaceRobotPoses-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses-response>"
  "niryo_one_msgs/GetWorkspaceRobotPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns string type for a service object of type 'GetWorkspaceRobotPoses-response"
  "niryo_one_msgs/GetWorkspaceRobotPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRobotPoses-response>"
  "280aaac02707bfb63e891c5f74a0b7c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns md5sum for a message object of type 'GetWorkspaceRobotPoses-response"
  "280aaac02707bfb63e891c5f74a0b7c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns full string definition for message of type '<GetWorkspaceRobotPoses-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_one_msgs/RobotState pose_origin~%niryo_one_msgs/RobotState pose_1~%niryo_one_msgs/RobotState pose_2~%niryo_one_msgs/RobotState pose_3~%~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns full string definition for message of type 'GetWorkspaceRobotPoses-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_one_msgs/RobotState pose_origin~%niryo_one_msgs/RobotState pose_1~%niryo_one_msgs/RobotState pose_2~%niryo_one_msgs/RobotState pose_3~%~%~%================================================================================~%MSG: niryo_one_msgs/RobotState~%~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRobotPoses-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRobotPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRobotPoses-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':pose_origin (pose_origin msg))
    (cl:cons ':pose_1 (pose_1 msg))
    (cl:cons ':pose_2 (pose_2 msg))
    (cl:cons ':pose_3 (pose_3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  'GetWorkspaceRobotPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  'GetWorkspaceRobotPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses>"
  "niryo_one_msgs/GetWorkspaceRobotPoses")