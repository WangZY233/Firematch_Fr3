; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude PullAirVacuumPump-request.msg.html

(cl:defclass <PullAirVacuumPump-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (pull_air_position
    :reader pull_air_position
    :initarg :pull_air_position
    :type cl:fixnum
    :initform 0)
   (pull_air_hold_torque
    :reader pull_air_hold_torque
    :initarg :pull_air_hold_torque
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PullAirVacuumPump-request (<PullAirVacuumPump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PullAirVacuumPump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PullAirVacuumPump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PullAirVacuumPump-request> is deprecated: use niryo_one_msgs-srv:PullAirVacuumPump-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PullAirVacuumPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pull_air_position-val :lambda-list '(m))
(cl:defmethod pull_air_position-val ((m <PullAirVacuumPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pull_air_position-val is deprecated.  Use niryo_one_msgs-srv:pull_air_position instead.")
  (pull_air_position m))

(cl:ensure-generic-function 'pull_air_hold_torque-val :lambda-list '(m))
(cl:defmethod pull_air_hold_torque-val ((m <PullAirVacuumPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:pull_air_hold_torque-val is deprecated.  Use niryo_one_msgs-srv:pull_air_hold_torque instead.")
  (pull_air_hold_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PullAirVacuumPump-request>) ostream)
  "Serializes a message object of type '<PullAirVacuumPump-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pull_air_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pull_air_hold_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PullAirVacuumPump-request>) istream)
  "Deserializes a message object of type '<PullAirVacuumPump-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pull_air_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pull_air_hold_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PullAirVacuumPump-request>)))
  "Returns string type for a service object of type '<PullAirVacuumPump-request>"
  "niryo_one_msgs/PullAirVacuumPumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullAirVacuumPump-request)))
  "Returns string type for a service object of type 'PullAirVacuumPump-request"
  "niryo_one_msgs/PullAirVacuumPumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PullAirVacuumPump-request>)))
  "Returns md5sum for a message object of type '<PullAirVacuumPump-request>"
  "fdd48b46d71dd8ff507dc76750227fa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PullAirVacuumPump-request)))
  "Returns md5sum for a message object of type 'PullAirVacuumPump-request"
  "fdd48b46d71dd8ff507dc76750227fa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PullAirVacuumPump-request>)))
  "Returns full string definition for message of type '<PullAirVacuumPump-request>"
  (cl:format cl:nil "uint8 id~%~%int16 pull_air_position~%int16 pull_air_hold_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PullAirVacuumPump-request)))
  "Returns full string definition for message of type 'PullAirVacuumPump-request"
  (cl:format cl:nil "uint8 id~%~%int16 pull_air_position~%int16 pull_air_hold_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PullAirVacuumPump-request>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PullAirVacuumPump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PullAirVacuumPump-request
    (cl:cons ':id (id msg))
    (cl:cons ':pull_air_position (pull_air_position msg))
    (cl:cons ':pull_air_hold_torque (pull_air_hold_torque msg))
))
;//! \htmlinclude PullAirVacuumPump-response.msg.html

(cl:defclass <PullAirVacuumPump-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PullAirVacuumPump-response (<PullAirVacuumPump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PullAirVacuumPump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PullAirVacuumPump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PullAirVacuumPump-response> is deprecated: use niryo_one_msgs-srv:PullAirVacuumPump-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PullAirVacuumPump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:state-val is deprecated.  Use niryo_one_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PullAirVacuumPump-response>) ostream)
  "Serializes a message object of type '<PullAirVacuumPump-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PullAirVacuumPump-response>) istream)
  "Deserializes a message object of type '<PullAirVacuumPump-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PullAirVacuumPump-response>)))
  "Returns string type for a service object of type '<PullAirVacuumPump-response>"
  "niryo_one_msgs/PullAirVacuumPumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullAirVacuumPump-response)))
  "Returns string type for a service object of type 'PullAirVacuumPump-response"
  "niryo_one_msgs/PullAirVacuumPumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PullAirVacuumPump-response>)))
  "Returns md5sum for a message object of type '<PullAirVacuumPump-response>"
  "fdd48b46d71dd8ff507dc76750227fa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PullAirVacuumPump-response)))
  "Returns md5sum for a message object of type 'PullAirVacuumPump-response"
  "fdd48b46d71dd8ff507dc76750227fa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PullAirVacuumPump-response>)))
  "Returns full string definition for message of type '<PullAirVacuumPump-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PullAirVacuumPump-response)))
  "Returns full string definition for message of type 'PullAirVacuumPump-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PullAirVacuumPump-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PullAirVacuumPump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PullAirVacuumPump-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PullAirVacuumPump)))
  'PullAirVacuumPump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PullAirVacuumPump)))
  'PullAirVacuumPump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PullAirVacuumPump)))
  "Returns string type for a service object of type '<PullAirVacuumPump>"
  "niryo_one_msgs/PullAirVacuumPump")