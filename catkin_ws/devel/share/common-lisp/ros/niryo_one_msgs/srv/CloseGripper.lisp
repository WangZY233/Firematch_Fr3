; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude CloseGripper-request.msg.html

(cl:defclass <CloseGripper-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (close_position
    :reader close_position
    :initarg :close_position
    :type cl:fixnum
    :initform 0)
   (close_speed
    :reader close_speed
    :initarg :close_speed
    :type cl:fixnum
    :initform 0)
   (close_hold_torque
    :reader close_hold_torque
    :initarg :close_hold_torque
    :type cl:fixnum
    :initform 0)
   (close_max_torque
    :reader close_max_torque
    :initarg :close_max_torque
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseGripper-request (<CloseGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<CloseGripper-request> is deprecated: use niryo_one_msgs-srv:CloseGripper-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CloseGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'close_position-val :lambda-list '(m))
(cl:defmethod close_position-val ((m <CloseGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:close_position-val is deprecated.  Use niryo_one_msgs-srv:close_position instead.")
  (close_position m))

(cl:ensure-generic-function 'close_speed-val :lambda-list '(m))
(cl:defmethod close_speed-val ((m <CloseGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:close_speed-val is deprecated.  Use niryo_one_msgs-srv:close_speed instead.")
  (close_speed m))

(cl:ensure-generic-function 'close_hold_torque-val :lambda-list '(m))
(cl:defmethod close_hold_torque-val ((m <CloseGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:close_hold_torque-val is deprecated.  Use niryo_one_msgs-srv:close_hold_torque instead.")
  (close_hold_torque m))

(cl:ensure-generic-function 'close_max_torque-val :lambda-list '(m))
(cl:defmethod close_max_torque-val ((m <CloseGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:close_max_torque-val is deprecated.  Use niryo_one_msgs-srv:close_max_torque instead.")
  (close_max_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseGripper-request>) ostream)
  "Serializes a message object of type '<CloseGripper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'close_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'close_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'close_hold_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'close_max_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseGripper-request>) istream)
  "Deserializes a message object of type '<CloseGripper-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'close_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'close_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'close_hold_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'close_max_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseGripper-request>)))
  "Returns string type for a service object of type '<CloseGripper-request>"
  "niryo_one_msgs/CloseGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGripper-request)))
  "Returns string type for a service object of type 'CloseGripper-request"
  "niryo_one_msgs/CloseGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseGripper-request>)))
  "Returns md5sum for a message object of type '<CloseGripper-request>"
  "04901e0d312f8ee9c675fc0042c3a8e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseGripper-request)))
  "Returns md5sum for a message object of type 'CloseGripper-request"
  "04901e0d312f8ee9c675fc0042c3a8e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseGripper-request>)))
  "Returns full string definition for message of type '<CloseGripper-request>"
  (cl:format cl:nil "~%uint8 id~%~%int16 close_position~%int16 close_speed~%int16 close_hold_torque~%int16 close_max_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseGripper-request)))
  "Returns full string definition for message of type 'CloseGripper-request"
  (cl:format cl:nil "~%uint8 id~%~%int16 close_position~%int16 close_speed~%int16 close_hold_torque~%int16 close_max_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseGripper-request>))
  (cl:+ 0
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseGripper-request
    (cl:cons ':id (id msg))
    (cl:cons ':close_position (close_position msg))
    (cl:cons ':close_speed (close_speed msg))
    (cl:cons ':close_hold_torque (close_hold_torque msg))
    (cl:cons ':close_max_torque (close_max_torque msg))
))
;//! \htmlinclude CloseGripper-response.msg.html

(cl:defclass <CloseGripper-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseGripper-response (<CloseGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<CloseGripper-response> is deprecated: use niryo_one_msgs-srv:CloseGripper-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CloseGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:state-val is deprecated.  Use niryo_one_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseGripper-response>) ostream)
  "Serializes a message object of type '<CloseGripper-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseGripper-response>) istream)
  "Deserializes a message object of type '<CloseGripper-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseGripper-response>)))
  "Returns string type for a service object of type '<CloseGripper-response>"
  "niryo_one_msgs/CloseGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGripper-response)))
  "Returns string type for a service object of type 'CloseGripper-response"
  "niryo_one_msgs/CloseGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseGripper-response>)))
  "Returns md5sum for a message object of type '<CloseGripper-response>"
  "04901e0d312f8ee9c675fc0042c3a8e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseGripper-response)))
  "Returns md5sum for a message object of type 'CloseGripper-response"
  "04901e0d312f8ee9c675fc0042c3a8e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseGripper-response>)))
  "Returns full string definition for message of type '<CloseGripper-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseGripper-response)))
  "Returns full string definition for message of type 'CloseGripper-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseGripper-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseGripper-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseGripper)))
  'CloseGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseGripper)))
  'CloseGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGripper)))
  "Returns string type for a service object of type '<CloseGripper>"
  "niryo_one_msgs/CloseGripper")