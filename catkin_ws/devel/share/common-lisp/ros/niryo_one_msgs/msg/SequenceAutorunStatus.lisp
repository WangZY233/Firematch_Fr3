; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude SequenceAutorunStatus.msg.html

(cl:defclass <SequenceAutorunStatus> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (sequence_ids
    :reader sequence_ids
    :initarg :sequence_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SequenceAutorunStatus (<SequenceAutorunStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SequenceAutorunStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SequenceAutorunStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<SequenceAutorunStatus> is deprecated: use niryo_one_msgs-msg:SequenceAutorunStatus instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <SequenceAutorunStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:enabled-val is deprecated.  Use niryo_one_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SequenceAutorunStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:mode-val is deprecated.  Use niryo_one_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'sequence_ids-val :lambda-list '(m))
(cl:defmethod sequence_ids-val ((m <SequenceAutorunStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:sequence_ids-val is deprecated.  Use niryo_one_msgs-msg:sequence_ids instead.")
  (sequence_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SequenceAutorunStatus>) ostream)
  "Serializes a message object of type '<SequenceAutorunStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sequence_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'sequence_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SequenceAutorunStatus>) istream)
  "Deserializes a message object of type '<SequenceAutorunStatus>"
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sequence_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sequence_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SequenceAutorunStatus>)))
  "Returns string type for a message object of type '<SequenceAutorunStatus>"
  "niryo_one_msgs/SequenceAutorunStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SequenceAutorunStatus)))
  "Returns string type for a message object of type 'SequenceAutorunStatus"
  "niryo_one_msgs/SequenceAutorunStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SequenceAutorunStatus>)))
  "Returns md5sum for a message object of type '<SequenceAutorunStatus>"
  "2fd70cfd773159456b3e0c9b23254bb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SequenceAutorunStatus)))
  "Returns md5sum for a message object of type 'SequenceAutorunStatus"
  "2fd70cfd773159456b3e0c9b23254bb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SequenceAutorunStatus>)))
  "Returns full string definition for message of type '<SequenceAutorunStatus>"
  (cl:format cl:nil "bool enabled~%int32 mode~%int32[] sequence_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SequenceAutorunStatus)))
  "Returns full string definition for message of type 'SequenceAutorunStatus"
  (cl:format cl:nil "bool enabled~%int32 mode~%int32[] sequence_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SequenceAutorunStatus>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sequence_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SequenceAutorunStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SequenceAutorunStatus
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':sequence_ids (sequence_ids msg))
))
