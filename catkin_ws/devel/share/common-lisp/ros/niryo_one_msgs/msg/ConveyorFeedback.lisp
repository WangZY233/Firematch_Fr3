; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude ConveyorFeedback.msg.html

(cl:defclass <ConveyorFeedback> (roslisp-msg-protocol:ros-message)
  ((conveyor_id
    :reader conveyor_id
    :initarg :conveyor_id
    :type cl:fixnum
    :initform 0)
   (connection_state
    :reader connection_state
    :initarg :connection_state
    :type cl:boolean
    :initform cl:nil)
   (running
    :reader running
    :initarg :running
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

(cl:defclass ConveyorFeedback (<ConveyorFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<ConveyorFeedback> is deprecated: use niryo_one_msgs-msg:ConveyorFeedback instead.")))

(cl:ensure-generic-function 'conveyor_id-val :lambda-list '(m))
(cl:defmethod conveyor_id-val ((m <ConveyorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:conveyor_id-val is deprecated.  Use niryo_one_msgs-msg:conveyor_id instead.")
  (conveyor_id m))

(cl:ensure-generic-function 'connection_state-val :lambda-list '(m))
(cl:defmethod connection_state-val ((m <ConveyorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:connection_state-val is deprecated.  Use niryo_one_msgs-msg:connection_state instead.")
  (connection_state m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <ConveyorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:running-val is deprecated.  Use niryo_one_msgs-msg:running instead.")
  (running m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ConveyorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:speed-val is deprecated.  Use niryo_one_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ConveyorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:direction-val is deprecated.  Use niryo_one_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorFeedback>) ostream)
  "Serializes a message object of type '<ConveyorFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'conveyor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorFeedback>) istream)
  "Deserializes a message object of type '<ConveyorFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'conveyor_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'connection_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorFeedback>)))
  "Returns string type for a message object of type '<ConveyorFeedback>"
  "niryo_one_msgs/ConveyorFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorFeedback)))
  "Returns string type for a message object of type 'ConveyorFeedback"
  "niryo_one_msgs/ConveyorFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorFeedback>)))
  "Returns md5sum for a message object of type '<ConveyorFeedback>"
  "1e7764cd998f86f936c67fc5b79bd288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorFeedback)))
  "Returns md5sum for a message object of type 'ConveyorFeedback"
  "1e7764cd998f86f936c67fc5b79bd288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorFeedback>)))
  "Returns full string definition for message of type '<ConveyorFeedback>"
  (cl:format cl:nil "~%#Conveyor id ( either 6 or 7) ~%uint8 conveyor_id~%#Conveyor Connection state ( if it is enabled) ~%bool connection_state~%# Conveyor Controls state : ON or OFF~%bool running~%# Conveyor Speed ( 1-> 100 %)~%int16 speed~%# Conveyor direction ( backward or forward)~%int8 direction~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorFeedback)))
  "Returns full string definition for message of type 'ConveyorFeedback"
  (cl:format cl:nil "~%#Conveyor id ( either 6 or 7) ~%uint8 conveyor_id~%#Conveyor Connection state ( if it is enabled) ~%bool connection_state~%# Conveyor Controls state : ON or OFF~%bool running~%# Conveyor Speed ( 1-> 100 %)~%int16 speed~%# Conveyor direction ( backward or forward)~%int8 direction~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorFeedback>))
  (cl:+ 0
     1
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorFeedback
    (cl:cons ':conveyor_id (conveyor_id msg))
    (cl:cons ':connection_state (connection_state msg))
    (cl:cons ':running (running msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':direction (direction msg))
))
