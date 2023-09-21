; Auto-generated. Do not edit!


(cl:in-package ros_control_boilerplate-msg)


;//! \htmlinclude statefb.msg.html

(cl:defclass <statefb> (roslisp-msg-protocol:ros-message)
  ((statuswd
    :reader statuswd
    :initarg :statuswd
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (actpos
    :reader actpos
    :initarg :actpos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (err
    :reader err
    :initarg :err
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass statefb (<statefb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <statefb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'statefb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-msg:<statefb> is deprecated: use ros_control_boilerplate-msg:statefb instead.")))

(cl:ensure-generic-function 'statuswd-val :lambda-list '(m))
(cl:defmethod statuswd-val ((m <statefb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:statuswd-val is deprecated.  Use ros_control_boilerplate-msg:statuswd instead.")
  (statuswd m))

(cl:ensure-generic-function 'actpos-val :lambda-list '(m))
(cl:defmethod actpos-val ((m <statefb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:actpos-val is deprecated.  Use ros_control_boilerplate-msg:actpos instead.")
  (actpos m))

(cl:ensure-generic-function 'err-val :lambda-list '(m))
(cl:defmethod err-val ((m <statefb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:err-val is deprecated.  Use ros_control_boilerplate-msg:err instead.")
  (err m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <statefb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:torque-val is deprecated.  Use ros_control_boilerplate-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <statefb>) ostream)
  "Serializes a message object of type '<statefb>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'statuswd))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'actpos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'err))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <statefb>) istream)
  "Deserializes a message object of type '<statefb>"
  (cl:setf (cl:slot-value msg 'statuswd) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'statuswd)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'actpos) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'actpos)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'err) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'err)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<statefb>)))
  "Returns string type for a message object of type '<statefb>"
  "ros_control_boilerplate/statefb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'statefb)))
  "Returns string type for a message object of type 'statefb"
  "ros_control_boilerplate/statefb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<statefb>)))
  "Returns md5sum for a message object of type '<statefb>"
  "2ea94b11d87b20693912a0151f6e0d36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'statefb)))
  "Returns md5sum for a message object of type 'statefb"
  "2ea94b11d87b20693912a0151f6e0d36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<statefb>)))
  "Returns full string definition for message of type '<statefb>"
  (cl:format cl:nil "uint16[6] statuswd~%int32[6] actpos~%uint16[6] err~%int16[6] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'statefb)))
  "Returns full string definition for message of type 'statefb"
  (cl:format cl:nil "uint16[6] statuswd~%int32[6] actpos~%uint16[6] err~%int16[6] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <statefb>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'statuswd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'actpos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'err) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <statefb>))
  "Converts a ROS message object to a list"
  (cl:list 'statefb
    (cl:cons ':statuswd (statuswd msg))
    (cl:cons ':actpos (actpos msg))
    (cl:cons ':err (err msg))
    (cl:cons ':torque (torque msg))
))
