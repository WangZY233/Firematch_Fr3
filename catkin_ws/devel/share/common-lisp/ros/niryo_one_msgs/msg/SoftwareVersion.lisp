; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude SoftwareVersion.msg.html

(cl:defclass <SoftwareVersion> (roslisp-msg-protocol:ros-message)
  ((rpi_image_version
    :reader rpi_image_version
    :initarg :rpi_image_version
    :type cl:string
    :initform "")
   (ros_niryo_one_version
    :reader ros_niryo_one_version
    :initarg :ros_niryo_one_version
    :type cl:string
    :initform "")
   (motor_names
    :reader motor_names
    :initarg :motor_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (stepper_firmware_versions
    :reader stepper_firmware_versions
    :initarg :stepper_firmware_versions
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SoftwareVersion (<SoftwareVersion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftwareVersion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftwareVersion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<SoftwareVersion> is deprecated: use niryo_one_msgs-msg:SoftwareVersion instead.")))

(cl:ensure-generic-function 'rpi_image_version-val :lambda-list '(m))
(cl:defmethod rpi_image_version-val ((m <SoftwareVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:rpi_image_version-val is deprecated.  Use niryo_one_msgs-msg:rpi_image_version instead.")
  (rpi_image_version m))

(cl:ensure-generic-function 'ros_niryo_one_version-val :lambda-list '(m))
(cl:defmethod ros_niryo_one_version-val ((m <SoftwareVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:ros_niryo_one_version-val is deprecated.  Use niryo_one_msgs-msg:ros_niryo_one_version instead.")
  (ros_niryo_one_version m))

(cl:ensure-generic-function 'motor_names-val :lambda-list '(m))
(cl:defmethod motor_names-val ((m <SoftwareVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:motor_names-val is deprecated.  Use niryo_one_msgs-msg:motor_names instead.")
  (motor_names m))

(cl:ensure-generic-function 'stepper_firmware_versions-val :lambda-list '(m))
(cl:defmethod stepper_firmware_versions-val ((m <SoftwareVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:stepper_firmware_versions-val is deprecated.  Use niryo_one_msgs-msg:stepper_firmware_versions instead.")
  (stepper_firmware_versions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftwareVersion>) ostream)
  "Serializes a message object of type '<SoftwareVersion>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rpi_image_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rpi_image_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ros_niryo_one_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ros_niryo_one_version))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'motor_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stepper_firmware_versions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'stepper_firmware_versions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftwareVersion>) istream)
  "Deserializes a message object of type '<SoftwareVersion>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpi_image_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rpi_image_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_niryo_one_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ros_niryo_one_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stepper_firmware_versions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stepper_firmware_versions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftwareVersion>)))
  "Returns string type for a message object of type '<SoftwareVersion>"
  "niryo_one_msgs/SoftwareVersion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftwareVersion)))
  "Returns string type for a message object of type 'SoftwareVersion"
  "niryo_one_msgs/SoftwareVersion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftwareVersion>)))
  "Returns md5sum for a message object of type '<SoftwareVersion>"
  "05cf59e59925f010abc41acd1944fec8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftwareVersion)))
  "Returns md5sum for a message object of type 'SoftwareVersion"
  "05cf59e59925f010abc41acd1944fec8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftwareVersion>)))
  "Returns full string definition for message of type '<SoftwareVersion>"
  (cl:format cl:nil "~%string rpi_image_version~%string ros_niryo_one_version~%~%string[] motor_names~%string[] stepper_firmware_versions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftwareVersion)))
  "Returns full string definition for message of type 'SoftwareVersion"
  (cl:format cl:nil "~%string rpi_image_version~%string ros_niryo_one_version~%~%string[] motor_names~%string[] stepper_firmware_versions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftwareVersion>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rpi_image_version))
     4 (cl:length (cl:slot-value msg 'ros_niryo_one_version))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stepper_firmware_versions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftwareVersion>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftwareVersion
    (cl:cons ':rpi_image_version (rpi_image_version msg))
    (cl:cons ':ros_niryo_one_version (ros_niryo_one_version msg))
    (cl:cons ':motor_names (motor_names msg))
    (cl:cons ':stepper_firmware_versions (stepper_firmware_versions msg))
))
