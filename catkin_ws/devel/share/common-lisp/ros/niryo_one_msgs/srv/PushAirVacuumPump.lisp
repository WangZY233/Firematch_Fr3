; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude PushAirVacuumPump-request.msg.html

(cl:defclass <PushAirVacuumPump-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (push_air_position
    :reader push_air_position
    :initarg :push_air_position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PushAirVacuumPump-request (<PushAirVacuumPump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushAirVacuumPump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushAirVacuumPump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PushAirVacuumPump-request> is deprecated: use niryo_one_msgs-srv:PushAirVacuumPump-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PushAirVacuumPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'push_air_position-val :lambda-list '(m))
(cl:defmethod push_air_position-val ((m <PushAirVacuumPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:push_air_position-val is deprecated.  Use niryo_one_msgs-srv:push_air_position instead.")
  (push_air_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushAirVacuumPump-request>) ostream)
  "Serializes a message object of type '<PushAirVacuumPump-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'push_air_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushAirVacuumPump-request>) istream)
  "Deserializes a message object of type '<PushAirVacuumPump-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'push_air_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushAirVacuumPump-request>)))
  "Returns string type for a service object of type '<PushAirVacuumPump-request>"
  "niryo_one_msgs/PushAirVacuumPumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushAirVacuumPump-request)))
  "Returns string type for a service object of type 'PushAirVacuumPump-request"
  "niryo_one_msgs/PushAirVacuumPumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushAirVacuumPump-request>)))
  "Returns md5sum for a message object of type '<PushAirVacuumPump-request>"
  "41cc870230024f471ead928a5e8205a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushAirVacuumPump-request)))
  "Returns md5sum for a message object of type 'PushAirVacuumPump-request"
  "41cc870230024f471ead928a5e8205a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushAirVacuumPump-request>)))
  "Returns full string definition for message of type '<PushAirVacuumPump-request>"
  (cl:format cl:nil "uint8 id~%~%int16 push_air_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushAirVacuumPump-request)))
  "Returns full string definition for message of type 'PushAirVacuumPump-request"
  (cl:format cl:nil "uint8 id~%~%int16 push_air_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushAirVacuumPump-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushAirVacuumPump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PushAirVacuumPump-request
    (cl:cons ':id (id msg))
    (cl:cons ':push_air_position (push_air_position msg))
))
;//! \htmlinclude PushAirVacuumPump-response.msg.html

(cl:defclass <PushAirVacuumPump-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PushAirVacuumPump-response (<PushAirVacuumPump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushAirVacuumPump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushAirVacuumPump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<PushAirVacuumPump-response> is deprecated: use niryo_one_msgs-srv:PushAirVacuumPump-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PushAirVacuumPump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:state-val is deprecated.  Use niryo_one_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushAirVacuumPump-response>) ostream)
  "Serializes a message object of type '<PushAirVacuumPump-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushAirVacuumPump-response>) istream)
  "Deserializes a message object of type '<PushAirVacuumPump-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushAirVacuumPump-response>)))
  "Returns string type for a service object of type '<PushAirVacuumPump-response>"
  "niryo_one_msgs/PushAirVacuumPumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushAirVacuumPump-response)))
  "Returns string type for a service object of type 'PushAirVacuumPump-response"
  "niryo_one_msgs/PushAirVacuumPumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushAirVacuumPump-response>)))
  "Returns md5sum for a message object of type '<PushAirVacuumPump-response>"
  "41cc870230024f471ead928a5e8205a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushAirVacuumPump-response)))
  "Returns md5sum for a message object of type 'PushAirVacuumPump-response"
  "41cc870230024f471ead928a5e8205a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushAirVacuumPump-response>)))
  "Returns full string definition for message of type '<PushAirVacuumPump-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushAirVacuumPump-response)))
  "Returns full string definition for message of type 'PushAirVacuumPump-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushAirVacuumPump-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushAirVacuumPump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PushAirVacuumPump-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PushAirVacuumPump)))
  'PushAirVacuumPump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PushAirVacuumPump)))
  'PushAirVacuumPump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushAirVacuumPump)))
  "Returns string type for a service object of type '<PushAirVacuumPump>"
  "niryo_one_msgs/PushAirVacuumPump")