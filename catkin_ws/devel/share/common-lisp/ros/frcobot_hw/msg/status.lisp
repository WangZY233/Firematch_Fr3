; Auto-generated. Do not edit!


(cl:in-package frcobot_hw-msg)


;//! \htmlinclude status.msg.html

(cl:defclass <status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frame_count
    :reader frame_count
    :initarg :frame_count
    :type cl:fixnum
    :initform 0)
   (program_state
    :reader program_state
    :initarg :program_state
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (robot_mode
    :reader robot_mode
    :initarg :robot_mode
    :type cl:fixnum
    :initform 0)
   (cur_joints_pose
    :reader cur_joints_pose
    :initarg :cur_joints_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cur_tcp_pose
    :reader cur_tcp_pose
    :initarg :cur_tcp_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cur_joints_torque
    :reader cur_joints_torque
    :initarg :cur_joints_torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tool_num
    :reader tool_num
    :initarg :tool_num
    :type cl:fixnum
    :initform 0)
   (cl_dgt_output_h
    :reader cl_dgt_output_h
    :initarg :cl_dgt_output_h
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (cl_dgt_output_l
    :reader cl_dgt_output_l
    :initarg :cl_dgt_output_l
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tl_dgt_output_l
    :reader tl_dgt_output_l
    :initarg :tl_dgt_output_l
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (robot_motion_done
    :reader robot_motion_done
    :initarg :robot_motion_done
    :type cl:fixnum
    :initform 0)
   (gripper_motion_done
    :reader gripper_motion_done
    :initarg :gripper_motion_done
    :type cl:fixnum
    :initform 0))
)

(cl:defclass status (<status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frcobot_hw-msg:<status> is deprecated: use frcobot_hw-msg:status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:header-val is deprecated.  Use frcobot_hw-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_count-val :lambda-list '(m))
(cl:defmethod frame_count-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:frame_count-val is deprecated.  Use frcobot_hw-msg:frame_count instead.")
  (frame_count m))

(cl:ensure-generic-function 'program_state-val :lambda-list '(m))
(cl:defmethod program_state-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:program_state-val is deprecated.  Use frcobot_hw-msg:program_state instead.")
  (program_state m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:error_code-val is deprecated.  Use frcobot_hw-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'robot_mode-val :lambda-list '(m))
(cl:defmethod robot_mode-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:robot_mode-val is deprecated.  Use frcobot_hw-msg:robot_mode instead.")
  (robot_mode m))

(cl:ensure-generic-function 'cur_joints_pose-val :lambda-list '(m))
(cl:defmethod cur_joints_pose-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:cur_joints_pose-val is deprecated.  Use frcobot_hw-msg:cur_joints_pose instead.")
  (cur_joints_pose m))

(cl:ensure-generic-function 'cur_tcp_pose-val :lambda-list '(m))
(cl:defmethod cur_tcp_pose-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:cur_tcp_pose-val is deprecated.  Use frcobot_hw-msg:cur_tcp_pose instead.")
  (cur_tcp_pose m))

(cl:ensure-generic-function 'cur_joints_torque-val :lambda-list '(m))
(cl:defmethod cur_joints_torque-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:cur_joints_torque-val is deprecated.  Use frcobot_hw-msg:cur_joints_torque instead.")
  (cur_joints_torque m))

(cl:ensure-generic-function 'tool_num-val :lambda-list '(m))
(cl:defmethod tool_num-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:tool_num-val is deprecated.  Use frcobot_hw-msg:tool_num instead.")
  (tool_num m))

(cl:ensure-generic-function 'cl_dgt_output_h-val :lambda-list '(m))
(cl:defmethod cl_dgt_output_h-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:cl_dgt_output_h-val is deprecated.  Use frcobot_hw-msg:cl_dgt_output_h instead.")
  (cl_dgt_output_h m))

(cl:ensure-generic-function 'cl_dgt_output_l-val :lambda-list '(m))
(cl:defmethod cl_dgt_output_l-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:cl_dgt_output_l-val is deprecated.  Use frcobot_hw-msg:cl_dgt_output_l instead.")
  (cl_dgt_output_l m))

(cl:ensure-generic-function 'tl_dgt_output_l-val :lambda-list '(m))
(cl:defmethod tl_dgt_output_l-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:tl_dgt_output_l-val is deprecated.  Use frcobot_hw-msg:tl_dgt_output_l instead.")
  (tl_dgt_output_l m))

(cl:ensure-generic-function 'robot_motion_done-val :lambda-list '(m))
(cl:defmethod robot_motion_done-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:robot_motion_done-val is deprecated.  Use frcobot_hw-msg:robot_motion_done instead.")
  (robot_motion_done m))

(cl:ensure-generic-function 'gripper_motion_done-val :lambda-list '(m))
(cl:defmethod gripper_motion_done-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frcobot_hw-msg:gripper_motion_done-val is deprecated.  Use frcobot_hw-msg:gripper_motion_done instead.")
  (gripper_motion_done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <status>) ostream)
  "Serializes a message object of type '<status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'program_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cur_joints_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cur_joints_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cur_tcp_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cur_tcp_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cur_joints_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cur_joints_torque))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_num)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cl_dgt_output_h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cl_dgt_output_h))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cl_dgt_output_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cl_dgt_output_l))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tl_dgt_output_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'tl_dgt_output_l))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_motion_done)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_motion_done)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <status>) istream)
  "Deserializes a message object of type '<status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'program_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cur_joints_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cur_joints_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cur_tcp_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cur_tcp_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cur_joints_torque) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cur_joints_torque)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_num)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cl_dgt_output_h) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cl_dgt_output_h)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cl_dgt_output_l) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cl_dgt_output_l)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tl_dgt_output_l) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tl_dgt_output_l)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_motion_done)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_motion_done)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<status>)))
  "Returns string type for a message object of type '<status>"
  "frcobot_hw/status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status)))
  "Returns string type for a message object of type 'status"
  "frcobot_hw/status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<status>)))
  "Returns md5sum for a message object of type '<status>"
  "4e57754ebead024561f206770f4ce276")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'status)))
  "Returns md5sum for a message object of type 'status"
  "4e57754ebead024561f206770f4ce276")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<status>)))
  "Returns full string definition for message of type '<status>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 frame_count~%uint8 program_state~%uint8 error_code~%uint8 robot_mode~%float64[] cur_joints_pose~%float64[] cur_tcp_pose~%float64[] cur_joints_torque~%uint8 tool_num~%uint8[] cl_dgt_output_h~%uint8[] cl_dgt_output_l~%uint8[] tl_dgt_output_l~%uint8 robot_motion_done~%uint8 gripper_motion_done~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'status)))
  "Returns full string definition for message of type 'status"
  (cl:format cl:nil "std_msgs/Header header~%uint8 frame_count~%uint8 program_state~%uint8 error_code~%uint8 robot_mode~%float64[] cur_joints_pose~%float64[] cur_tcp_pose~%float64[] cur_joints_torque~%uint8 tool_num~%uint8[] cl_dgt_output_h~%uint8[] cl_dgt_output_l~%uint8[] tl_dgt_output_l~%uint8 robot_motion_done~%uint8 gripper_motion_done~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_joints_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_tcp_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_joints_torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cl_dgt_output_h) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cl_dgt_output_l) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tl_dgt_output_l) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <status>))
  "Converts a ROS message object to a list"
  (cl:list 'status
    (cl:cons ':header (header msg))
    (cl:cons ':frame_count (frame_count msg))
    (cl:cons ':program_state (program_state msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':robot_mode (robot_mode msg))
    (cl:cons ':cur_joints_pose (cur_joints_pose msg))
    (cl:cons ':cur_tcp_pose (cur_tcp_pose msg))
    (cl:cons ':cur_joints_torque (cur_joints_torque msg))
    (cl:cons ':tool_num (tool_num msg))
    (cl:cons ':cl_dgt_output_h (cl_dgt_output_h msg))
    (cl:cons ':cl_dgt_output_l (cl_dgt_output_l msg))
    (cl:cons ':tl_dgt_output_l (tl_dgt_output_l msg))
    (cl:cons ':robot_motion_done (robot_motion_done msg))
    (cl:cons ':gripper_motion_done (gripper_motion_done msg))
))
