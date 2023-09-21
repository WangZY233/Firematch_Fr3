; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude SetCalibrationCam-request.msg.html

(cl:defclass <SetCalibrationCam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SetCalibrationCam-request (<SetCalibrationCam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCalibrationCam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCalibrationCam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetCalibrationCam-request> is deprecated: use niryo_one_msgs-srv:SetCalibrationCam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetCalibrationCam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:name-val is deprecated.  Use niryo_one_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCalibrationCam-request>) ostream)
  "Serializes a message object of type '<SetCalibrationCam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCalibrationCam-request>) istream)
  "Deserializes a message object of type '<SetCalibrationCam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCalibrationCam-request>)))
  "Returns string type for a service object of type '<SetCalibrationCam-request>"
  "niryo_one_msgs/SetCalibrationCamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCalibrationCam-request)))
  "Returns string type for a service object of type 'SetCalibrationCam-request"
  "niryo_one_msgs/SetCalibrationCamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCalibrationCam-request>)))
  "Returns md5sum for a message object of type '<SetCalibrationCam-request>"
  "34594f1cc2cba58cae4d417628221460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCalibrationCam-request)))
  "Returns md5sum for a message object of type 'SetCalibrationCam-request"
  "34594f1cc2cba58cae4d417628221460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCalibrationCam-request>)))
  "Returns full string definition for message of type '<SetCalibrationCam-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCalibrationCam-request)))
  "Returns full string definition for message of type 'SetCalibrationCam-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCalibrationCam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCalibrationCam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCalibrationCam-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SetCalibrationCam-response.msg.html

(cl:defclass <SetCalibrationCam-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCalibrationCam-response (<SetCalibrationCam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCalibrationCam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCalibrationCam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetCalibrationCam-response> is deprecated: use niryo_one_msgs-srv:SetCalibrationCam-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetCalibrationCam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetCalibrationCam-response>)))
    "Constants for message type '<SetCalibrationCam-response>"
  '((:SUCCESSFULLY_SET . 0)
    (:OVERWRITTEN . 1)
    (:NOT_SET . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetCalibrationCam-response)))
    "Constants for message type 'SetCalibrationCam-response"
  '((:SUCCESSFULLY_SET . 0)
    (:OVERWRITTEN . 1)
    (:NOT_SET . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCalibrationCam-response>) ostream)
  "Serializes a message object of type '<SetCalibrationCam-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCalibrationCam-response>) istream)
  "Deserializes a message object of type '<SetCalibrationCam-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCalibrationCam-response>)))
  "Returns string type for a service object of type '<SetCalibrationCam-response>"
  "niryo_one_msgs/SetCalibrationCamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCalibrationCam-response)))
  "Returns string type for a service object of type 'SetCalibrationCam-response"
  "niryo_one_msgs/SetCalibrationCamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCalibrationCam-response>)))
  "Returns md5sum for a message object of type '<SetCalibrationCam-response>"
  "34594f1cc2cba58cae4d417628221460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCalibrationCam-response)))
  "Returns md5sum for a message object of type 'SetCalibrationCam-response"
  "34594f1cc2cba58cae4d417628221460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCalibrationCam-response>)))
  "Returns full string definition for message of type '<SetCalibrationCam-response>"
  (cl:format cl:nil "int32 status~%int32 SUCCESSFULLY_SET = 0~%int32 OVERWRITTEN = 1~%int32 NOT_SET = -1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCalibrationCam-response)))
  "Returns full string definition for message of type 'SetCalibrationCam-response"
  (cl:format cl:nil "int32 status~%int32 SUCCESSFULLY_SET = 0~%int32 OVERWRITTEN = 1~%int32 NOT_SET = -1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCalibrationCam-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCalibrationCam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCalibrationCam-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCalibrationCam)))
  'SetCalibrationCam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCalibrationCam)))
  'SetCalibrationCam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCalibrationCam)))
  "Returns string type for a service object of type '<SetCalibrationCam>"
  "niryo_one_msgs/SetCalibrationCam")