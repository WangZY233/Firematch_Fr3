; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude TakePicture-request.msg.html

(cl:defclass <TakePicture-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass TakePicture-request (<TakePicture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePicture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePicture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<TakePicture-request> is deprecated: use niryo_one_msgs-srv:TakePicture-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <TakePicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:path-val is deprecated.  Use niryo_one_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePicture-request>) ostream)
  "Serializes a message object of type '<TakePicture-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePicture-request>) istream)
  "Deserializes a message object of type '<TakePicture-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePicture-request>)))
  "Returns string type for a service object of type '<TakePicture-request>"
  "niryo_one_msgs/TakePictureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePicture-request)))
  "Returns string type for a service object of type 'TakePicture-request"
  "niryo_one_msgs/TakePictureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePicture-request>)))
  "Returns md5sum for a message object of type '<TakePicture-request>"
  "24518277da746ec8ade3d50c001c2adf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePicture-request)))
  "Returns md5sum for a message object of type 'TakePicture-request"
  "24518277da746ec8ade3d50c001c2adf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePicture-request>)))
  "Returns full string definition for message of type '<TakePicture-request>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePicture-request)))
  "Returns full string definition for message of type 'TakePicture-request"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePicture-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePicture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePicture-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude TakePicture-response.msg.html

(cl:defclass <TakePicture-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TakePicture-response (<TakePicture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePicture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePicture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<TakePicture-response> is deprecated: use niryo_one_msgs-srv:TakePicture-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TakePicture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:success-val is deprecated.  Use niryo_one_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePicture-response>) ostream)
  "Serializes a message object of type '<TakePicture-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePicture-response>) istream)
  "Deserializes a message object of type '<TakePicture-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePicture-response>)))
  "Returns string type for a service object of type '<TakePicture-response>"
  "niryo_one_msgs/TakePictureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePicture-response)))
  "Returns string type for a service object of type 'TakePicture-response"
  "niryo_one_msgs/TakePictureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePicture-response>)))
  "Returns md5sum for a message object of type '<TakePicture-response>"
  "24518277da746ec8ade3d50c001c2adf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePicture-response)))
  "Returns md5sum for a message object of type 'TakePicture-response"
  "24518277da746ec8ade3d50c001c2adf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePicture-response>)))
  "Returns full string definition for message of type '<TakePicture-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePicture-response)))
  "Returns full string definition for message of type 'TakePicture-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePicture-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePicture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePicture-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakePicture)))
  'TakePicture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakePicture)))
  'TakePicture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePicture)))
  "Returns string type for a service object of type '<TakePicture>"
  "niryo_one_msgs/TakePicture")