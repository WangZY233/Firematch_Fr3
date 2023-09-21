; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude ShiftPose.msg.html

(cl:defclass <ShiftPose> (roslisp-msg-protocol:ros-message)
  ((axis_number
    :reader axis_number
    :initarg :axis_number
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShiftPose (<ShiftPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShiftPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShiftPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<ShiftPose> is deprecated: use niryo_one_msgs-msg:ShiftPose instead.")))

(cl:ensure-generic-function 'axis_number-val :lambda-list '(m))
(cl:defmethod axis_number-val ((m <ShiftPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:axis_number-val is deprecated.  Use niryo_one_msgs-msg:axis_number instead.")
  (axis_number m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ShiftPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:value-val is deprecated.  Use niryo_one_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShiftPose>) ostream)
  "Serializes a message object of type '<ShiftPose>"
  (cl:let* ((signed (cl:slot-value msg 'axis_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShiftPose>) istream)
  "Deserializes a message object of type '<ShiftPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShiftPose>)))
  "Returns string type for a message object of type '<ShiftPose>"
  "niryo_one_msgs/ShiftPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShiftPose)))
  "Returns string type for a message object of type 'ShiftPose"
  "niryo_one_msgs/ShiftPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShiftPose>)))
  "Returns md5sum for a message object of type '<ShiftPose>"
  "1582f6063ca2d2749f4798d853f452ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShiftPose)))
  "Returns md5sum for a message object of type 'ShiftPose"
  "1582f6063ca2d2749f4798d853f452ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShiftPose>)))
  "Returns full string definition for message of type '<ShiftPose>"
  (cl:format cl:nil "~%int32 axis_number~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShiftPose)))
  "Returns full string definition for message of type 'ShiftPose"
  (cl:format cl:nil "~%int32 axis_number~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShiftPose>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShiftPose>))
  "Converts a ROS message object to a list"
  (cl:list 'ShiftPose
    (cl:cons ':axis_number (axis_number msg))
    (cl:cons ':value (value msg))
))
