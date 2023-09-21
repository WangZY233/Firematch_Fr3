; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude ControlConveyor-request.msg.html

(cl:defclass <ControlConveyor-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (control_on
    :reader control_on
    :initarg :control_on
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControlConveyor-request (<ControlConveyor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlConveyor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlConveyor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ControlConveyor-request> is deprecated: use niryo_one_msgs-srv:ControlConveyor-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ControlConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'control_on-val :lambda-list '(m))
(cl:defmethod control_on-val ((m <ControlConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:control_on-val is deprecated.  Use niryo_one_msgs-srv:control_on instead.")
  (control_on m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ControlConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:speed-val is deprecated.  Use niryo_one_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ControlConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:direction-val is deprecated.  Use niryo_one_msgs-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlConveyor-request>) ostream)
  "Serializes a message object of type '<ControlConveyor-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control_on) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlConveyor-request>) istream)
  "Deserializes a message object of type '<ControlConveyor-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'control_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlConveyor-request>)))
  "Returns string type for a service object of type '<ControlConveyor-request>"
  "niryo_one_msgs/ControlConveyorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlConveyor-request)))
  "Returns string type for a service object of type 'ControlConveyor-request"
  "niryo_one_msgs/ControlConveyorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlConveyor-request>)))
  "Returns md5sum for a message object of type '<ControlConveyor-request>"
  "eddd3ce9c808a77e2842b11b76f25761")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlConveyor-request)))
  "Returns md5sum for a message object of type 'ControlConveyor-request"
  "eddd3ce9c808a77e2842b11b76f25761")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlConveyor-request>)))
  "Returns full string definition for message of type '<ControlConveyor-request>"
  (cl:format cl:nil "uint8 id~%~%bool control_on~%int16 speed~%int8 direction ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlConveyor-request)))
  "Returns full string definition for message of type 'ControlConveyor-request"
  (cl:format cl:nil "uint8 id~%~%bool control_on~%int16 speed~%int8 direction ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlConveyor-request>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlConveyor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlConveyor-request
    (cl:cons ':id (id msg))
    (cl:cons ':control_on (control_on msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude ControlConveyor-response.msg.html

(cl:defclass <ControlConveyor-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ControlConveyor-response (<ControlConveyor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlConveyor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlConveyor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<ControlConveyor-response> is deprecated: use niryo_one_msgs-srv:ControlConveyor-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ControlConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ControlConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlConveyor-response>) ostream)
  "Serializes a message object of type '<ControlConveyor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlConveyor-response>) istream)
  "Deserializes a message object of type '<ControlConveyor-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlConveyor-response>)))
  "Returns string type for a service object of type '<ControlConveyor-response>"
  "niryo_one_msgs/ControlConveyorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlConveyor-response)))
  "Returns string type for a service object of type 'ControlConveyor-response"
  "niryo_one_msgs/ControlConveyorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlConveyor-response>)))
  "Returns md5sum for a message object of type '<ControlConveyor-response>"
  "eddd3ce9c808a77e2842b11b76f25761")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlConveyor-response)))
  "Returns md5sum for a message object of type 'ControlConveyor-response"
  "eddd3ce9c808a77e2842b11b76f25761")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlConveyor-response>)))
  "Returns full string definition for message of type '<ControlConveyor-response>"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlConveyor-response)))
  "Returns full string definition for message of type 'ControlConveyor-response"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlConveyor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlConveyor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlConveyor-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlConveyor)))
  'ControlConveyor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlConveyor)))
  'ControlConveyor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlConveyor)))
  "Returns string type for a service object of type '<ControlConveyor>"
  "niryo_one_msgs/ControlConveyor")