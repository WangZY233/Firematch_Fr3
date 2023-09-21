; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude OpenGripper-request.msg.html

(cl:defclass <OpenGripper-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (open_position
    :reader open_position
    :initarg :open_position
    :type cl:fixnum
    :initform 0)
   (open_speed
    :reader open_speed
    :initarg :open_speed
    :type cl:fixnum
    :initform 0)
   (open_hold_torque
    :reader open_hold_torque
    :initarg :open_hold_torque
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenGripper-request (<OpenGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<OpenGripper-request> is deprecated: use niryo_one_msgs-srv:OpenGripper-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <OpenGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'open_position-val :lambda-list '(m))
(cl:defmethod open_position-val ((m <OpenGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:open_position-val is deprecated.  Use niryo_one_msgs-srv:open_position instead.")
  (open_position m))

(cl:ensure-generic-function 'open_speed-val :lambda-list '(m))
(cl:defmethod open_speed-val ((m <OpenGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:open_speed-val is deprecated.  Use niryo_one_msgs-srv:open_speed instead.")
  (open_speed m))

(cl:ensure-generic-function 'open_hold_torque-val :lambda-list '(m))
(cl:defmethod open_hold_torque-val ((m <OpenGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:open_hold_torque-val is deprecated.  Use niryo_one_msgs-srv:open_hold_torque instead.")
  (open_hold_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGripper-request>) ostream)
  "Serializes a message object of type '<OpenGripper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'open_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'open_hold_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGripper-request>) istream)
  "Deserializes a message object of type '<OpenGripper-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_hold_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGripper-request>)))
  "Returns string type for a service object of type '<OpenGripper-request>"
  "niryo_one_msgs/OpenGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGripper-request)))
  "Returns string type for a service object of type 'OpenGripper-request"
  "niryo_one_msgs/OpenGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGripper-request>)))
  "Returns md5sum for a message object of type '<OpenGripper-request>"
  "8fa16a49b77c971df71ae1d221893f06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGripper-request)))
  "Returns md5sum for a message object of type 'OpenGripper-request"
  "8fa16a49b77c971df71ae1d221893f06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGripper-request>)))
  "Returns full string definition for message of type '<OpenGripper-request>"
  (cl:format cl:nil "~%uint8 id~%~%int16 open_position~%int16 open_speed~%int16 open_hold_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGripper-request)))
  "Returns full string definition for message of type 'OpenGripper-request"
  (cl:format cl:nil "~%uint8 id~%~%int16 open_position~%int16 open_speed~%int16 open_hold_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGripper-request>))
  (cl:+ 0
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGripper-request
    (cl:cons ':id (id msg))
    (cl:cons ':open_position (open_position msg))
    (cl:cons ':open_speed (open_speed msg))
    (cl:cons ':open_hold_torque (open_hold_torque msg))
))
;//! \htmlinclude OpenGripper-response.msg.html

(cl:defclass <OpenGripper-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenGripper-response (<OpenGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<OpenGripper-response> is deprecated: use niryo_one_msgs-srv:OpenGripper-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <OpenGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:state-val is deprecated.  Use niryo_one_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGripper-response>) ostream)
  "Serializes a message object of type '<OpenGripper-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGripper-response>) istream)
  "Deserializes a message object of type '<OpenGripper-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGripper-response>)))
  "Returns string type for a service object of type '<OpenGripper-response>"
  "niryo_one_msgs/OpenGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGripper-response)))
  "Returns string type for a service object of type 'OpenGripper-response"
  "niryo_one_msgs/OpenGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGripper-response>)))
  "Returns md5sum for a message object of type '<OpenGripper-response>"
  "8fa16a49b77c971df71ae1d221893f06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGripper-response)))
  "Returns md5sum for a message object of type 'OpenGripper-response"
  "8fa16a49b77c971df71ae1d221893f06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGripper-response>)))
  "Returns full string definition for message of type '<OpenGripper-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGripper-response)))
  "Returns full string definition for message of type 'OpenGripper-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGripper-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGripper-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenGripper)))
  'OpenGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenGripper)))
  'OpenGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGripper)))
  "Returns string type for a service object of type '<OpenGripper>"
  "niryo_one_msgs/OpenGripper")