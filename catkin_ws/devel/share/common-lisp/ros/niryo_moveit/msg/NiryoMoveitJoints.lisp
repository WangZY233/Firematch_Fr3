; Auto-generated. Do not edit!


(cl:in-package niryo_moveit-msg)


;//! \htmlinclude NiryoMoveitJoints.msg.html

(cl:defclass <NiryoMoveitJoints> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (pick_pose
    :reader pick_pose
    :initarg :pick_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (place_pose
    :reader place_pose
    :initarg :place_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass NiryoMoveitJoints (<NiryoMoveitJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NiryoMoveitJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NiryoMoveitJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_moveit-msg:<NiryoMoveitJoints> is deprecated: use niryo_moveit-msg:NiryoMoveitJoints instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joints-val is deprecated.  Use niryo_moveit-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'pick_pose-val :lambda-list '(m))
(cl:defmethod pick_pose-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:pick_pose-val is deprecated.  Use niryo_moveit-msg:pick_pose instead.")
  (pick_pose m))

(cl:ensure-generic-function 'place_pose-val :lambda-list '(m))
(cl:defmethod place_pose-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:place_pose-val is deprecated.  Use niryo_moveit-msg:place_pose instead.")
  (place_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NiryoMoveitJoints>) ostream)
  "Serializes a message object of type '<NiryoMoveitJoints>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NiryoMoveitJoints>) istream)
  "Deserializes a message object of type '<NiryoMoveitJoints>"
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NiryoMoveitJoints>)))
  "Returns string type for a message object of type '<NiryoMoveitJoints>"
  "niryo_moveit/NiryoMoveitJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NiryoMoveitJoints)))
  "Returns string type for a message object of type 'NiryoMoveitJoints"
  "niryo_moveit/NiryoMoveitJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NiryoMoveitJoints>)))
  "Returns md5sum for a message object of type '<NiryoMoveitJoints>"
  "3894bb7ef9fbb4e54ec5ad55d9a45d5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NiryoMoveitJoints)))
  "Returns md5sum for a message object of type 'NiryoMoveitJoints"
  "3894bb7ef9fbb4e54ec5ad55d9a45d5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NiryoMoveitJoints>)))
  "Returns full string definition for message of type '<NiryoMoveitJoints>"
  (cl:format cl:nil "float64[6] joints~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NiryoMoveitJoints)))
  "Returns full string definition for message of type 'NiryoMoveitJoints"
  (cl:format cl:nil "float64[6] joints~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NiryoMoveitJoints>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NiryoMoveitJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'NiryoMoveitJoints
    (cl:cons ':joints (joints msg))
    (cl:cons ':pick_pose (pick_pose msg))
    (cl:cons ':place_pose (place_pose msg))
))
