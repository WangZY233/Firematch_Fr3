; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude UpdateConveyorId-request.msg.html

(cl:defclass <UpdateConveyorId-request> (roslisp-msg-protocol:ros-message)
  ((old_id
    :reader old_id
    :initarg :old_id
    :type cl:fixnum
    :initform 0)
   (new_id
    :reader new_id
    :initarg :new_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UpdateConveyorId-request (<UpdateConveyorId-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateConveyorId-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateConveyorId-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<UpdateConveyorId-request> is deprecated: use niryo_one_msgs-srv:UpdateConveyorId-request instead.")))

(cl:ensure-generic-function 'old_id-val :lambda-list '(m))
(cl:defmethod old_id-val ((m <UpdateConveyorId-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:old_id-val is deprecated.  Use niryo_one_msgs-srv:old_id instead.")
  (old_id m))

(cl:ensure-generic-function 'new_id-val :lambda-list '(m))
(cl:defmethod new_id-val ((m <UpdateConveyorId-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:new_id-val is deprecated.  Use niryo_one_msgs-srv:new_id instead.")
  (new_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateConveyorId-request>) ostream)
  "Serializes a message object of type '<UpdateConveyorId-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'old_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'new_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateConveyorId-request>) istream)
  "Deserializes a message object of type '<UpdateConveyorId-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'old_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'new_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateConveyorId-request>)))
  "Returns string type for a service object of type '<UpdateConveyorId-request>"
  "niryo_one_msgs/UpdateConveyorIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateConveyorId-request)))
  "Returns string type for a service object of type 'UpdateConveyorId-request"
  "niryo_one_msgs/UpdateConveyorIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateConveyorId-request>)))
  "Returns md5sum for a message object of type '<UpdateConveyorId-request>"
  "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateConveyorId-request)))
  "Returns md5sum for a message object of type 'UpdateConveyorId-request"
  "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateConveyorId-request>)))
  "Returns full string definition for message of type '<UpdateConveyorId-request>"
  (cl:format cl:nil "uint8 old_id~%uint8 new_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateConveyorId-request)))
  "Returns full string definition for message of type 'UpdateConveyorId-request"
  (cl:format cl:nil "uint8 old_id~%uint8 new_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateConveyorId-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateConveyorId-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateConveyorId-request
    (cl:cons ':old_id (old_id msg))
    (cl:cons ':new_id (new_id msg))
))
;//! \htmlinclude UpdateConveyorId-response.msg.html

(cl:defclass <UpdateConveyorId-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateConveyorId-response (<UpdateConveyorId-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateConveyorId-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateConveyorId-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<UpdateConveyorId-response> is deprecated: use niryo_one_msgs-srv:UpdateConveyorId-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdateConveyorId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UpdateConveyorId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateConveyorId-response>) ostream)
  "Serializes a message object of type '<UpdateConveyorId-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateConveyorId-response>) istream)
  "Deserializes a message object of type '<UpdateConveyorId-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateConveyorId-response>)))
  "Returns string type for a service object of type '<UpdateConveyorId-response>"
  "niryo_one_msgs/UpdateConveyorIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateConveyorId-response)))
  "Returns string type for a service object of type 'UpdateConveyorId-response"
  "niryo_one_msgs/UpdateConveyorIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateConveyorId-response>)))
  "Returns md5sum for a message object of type '<UpdateConveyorId-response>"
  "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateConveyorId-response)))
  "Returns md5sum for a message object of type 'UpdateConveyorId-response"
  "9e9cf49bb2af3c06095ed6c4f8b6cef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateConveyorId-response>)))
  "Returns full string definition for message of type '<UpdateConveyorId-response>"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateConveyorId-response)))
  "Returns full string definition for message of type 'UpdateConveyorId-response"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateConveyorId-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateConveyorId-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateConveyorId-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateConveyorId)))
  'UpdateConveyorId-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateConveyorId)))
  'UpdateConveyorId-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateConveyorId)))
  "Returns string type for a service object of type '<UpdateConveyorId>"
  "niryo_one_msgs/UpdateConveyorId")