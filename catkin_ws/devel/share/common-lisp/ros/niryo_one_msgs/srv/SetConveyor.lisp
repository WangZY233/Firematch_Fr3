; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude SetConveyor-request.msg.html

(cl:defclass <SetConveyor-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetConveyor-request (<SetConveyor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetConveyor-request> is deprecated: use niryo_one_msgs-srv:SetConveyor-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:id-val is deprecated.  Use niryo_one_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <SetConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:activate-val is deprecated.  Use niryo_one_msgs-srv:activate instead.")
  (activate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyor-request>) ostream)
  "Serializes a message object of type '<SetConveyor-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyor-request>) istream)
  "Deserializes a message object of type '<SetConveyor-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyor-request>)))
  "Returns string type for a service object of type '<SetConveyor-request>"
  "niryo_one_msgs/SetConveyorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor-request)))
  "Returns string type for a service object of type 'SetConveyor-request"
  "niryo_one_msgs/SetConveyorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyor-request>)))
  "Returns md5sum for a message object of type '<SetConveyor-request>"
  "afb7227a45bc4a5cddeb751521d20304")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyor-request)))
  "Returns md5sum for a message object of type 'SetConveyor-request"
  "afb7227a45bc4a5cddeb751521d20304")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyor-request>)))
  "Returns full string definition for message of type '<SetConveyor-request>"
  (cl:format cl:nil "uint8 id~%bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyor-request)))
  "Returns full string definition for message of type 'SetConveyor-request"
  (cl:format cl:nil "uint8 id~%bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyor-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyor-request
    (cl:cons ':id (id msg))
    (cl:cons ':activate (activate msg))
))
;//! \htmlinclude SetConveyor-response.msg.html

(cl:defclass <SetConveyor-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetConveyor-response (<SetConveyor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<SetConveyor-response> is deprecated: use niryo_one_msgs-srv:SetConveyor-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:status-val is deprecated.  Use niryo_one_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:message-val is deprecated.  Use niryo_one_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyor-response>) ostream)
  "Serializes a message object of type '<SetConveyor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyor-response>) istream)
  "Deserializes a message object of type '<SetConveyor-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyor-response>)))
  "Returns string type for a service object of type '<SetConveyor-response>"
  "niryo_one_msgs/SetConveyorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor-response)))
  "Returns string type for a service object of type 'SetConveyor-response"
  "niryo_one_msgs/SetConveyorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyor-response>)))
  "Returns md5sum for a message object of type '<SetConveyor-response>"
  "afb7227a45bc4a5cddeb751521d20304")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyor-response)))
  "Returns md5sum for a message object of type 'SetConveyor-response"
  "afb7227a45bc4a5cddeb751521d20304")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyor-response>)))
  "Returns full string definition for message of type '<SetConveyor-response>"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyor-response)))
  "Returns full string definition for message of type 'SetConveyor-response"
  (cl:format cl:nil "uint8 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyor-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetConveyor)))
  'SetConveyor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetConveyor)))
  'SetConveyor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor)))
  "Returns string type for a service object of type '<SetConveyor>"
  "niryo_one_msgs/SetConveyor")