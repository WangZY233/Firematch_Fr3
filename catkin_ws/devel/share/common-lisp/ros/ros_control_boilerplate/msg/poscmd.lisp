; Auto-generated. Do not edit!


(cl:in-package ros_control_boilerplate-msg)


;//! \htmlinclude poscmd.msg.html

(cl:defclass <poscmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (cntlwd
    :reader cntlwd
    :initarg :cntlwd
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (tarpos
    :reader tarpos
    :initarg :tarpos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (tolerant
    :reader tolerant
    :initarg :tolerant
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass poscmd (<poscmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <poscmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'poscmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-msg:<poscmd> is deprecated: use ros_control_boilerplate-msg:poscmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <poscmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:cmd-val is deprecated.  Use ros_control_boilerplate-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'cntlwd-val :lambda-list '(m))
(cl:defmethod cntlwd-val ((m <poscmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:cntlwd-val is deprecated.  Use ros_control_boilerplate-msg:cntlwd instead.")
  (cntlwd m))

(cl:ensure-generic-function 'tarpos-val :lambda-list '(m))
(cl:defmethod tarpos-val ((m <poscmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:tarpos-val is deprecated.  Use ros_control_boilerplate-msg:tarpos instead.")
  (tarpos m))

(cl:ensure-generic-function 'tolerant-val :lambda-list '(m))
(cl:defmethod tolerant-val ((m <poscmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:tolerant-val is deprecated.  Use ros_control_boilerplate-msg:tolerant instead.")
  (tolerant m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <poscmd>) ostream)
  "Serializes a message object of type '<poscmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'cntlwd))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'tarpos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'tolerant))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <poscmd>) istream)
  "Deserializes a message object of type '<poscmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cntlwd) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'cntlwd)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'tarpos) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'tarpos)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'tolerant) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'tolerant)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<poscmd>)))
  "Returns string type for a message object of type '<poscmd>"
  "ros_control_boilerplate/poscmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'poscmd)))
  "Returns string type for a message object of type 'poscmd"
  "ros_control_boilerplate/poscmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<poscmd>)))
  "Returns md5sum for a message object of type '<poscmd>"
  "d52264d0965d62e7c180d35534e09146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'poscmd)))
  "Returns md5sum for a message object of type 'poscmd"
  "d52264d0965d62e7c180d35534e09146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<poscmd>)))
  "Returns full string definition for message of type '<poscmd>"
  (cl:format cl:nil "uint16 cmd~%uint16[6] cntlwd~%int32[6] tarpos~%uint16[6] tolerant~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'poscmd)))
  "Returns full string definition for message of type 'poscmd"
  (cl:format cl:nil "uint16 cmd~%uint16[6] cntlwd~%int32[6] tarpos~%uint16[6] tolerant~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <poscmd>))
  (cl:+ 0
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cntlwd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'tarpos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'tolerant) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <poscmd>))
  "Converts a ROS message object to a list"
  (cl:list 'poscmd
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':cntlwd (cntlwd msg))
    (cl:cons ':tarpos (tarpos msg))
    (cl:cons ':tolerant (tolerant msg))
))
