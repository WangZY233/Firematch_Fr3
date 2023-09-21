; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetWorkspaceList-request.msg.html

(cl:defclass <GetWorkspaceList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWorkspaceList-request (<GetWorkspaceList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceList-request> is deprecated: use niryo_one_msgs-srv:GetWorkspaceList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceList-request>) ostream)
  "Serializes a message object of type '<GetWorkspaceList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceList-request>) istream)
  "Deserializes a message object of type '<GetWorkspaceList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceList-request>)))
  "Returns string type for a service object of type '<GetWorkspaceList-request>"
  "niryo_one_msgs/GetWorkspaceListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceList-request)))
  "Returns string type for a service object of type 'GetWorkspaceList-request"
  "niryo_one_msgs/GetWorkspaceListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceList-request>)))
  "Returns md5sum for a message object of type '<GetWorkspaceList-request>"
  "8b36c598e23fd962676550874c6879f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceList-request)))
  "Returns md5sum for a message object of type 'GetWorkspaceList-request"
  "8b36c598e23fd962676550874c6879f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceList-request>)))
  "Returns full string definition for message of type '<GetWorkspaceList-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceList-request)))
  "Returns full string definition for message of type 'GetWorkspaceList-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceList-request
))
;//! \htmlinclude GetWorkspaceList-response.msg.html

(cl:defclass <GetWorkspaceList-response> (roslisp-msg-protocol:ros-message)
  ((workspaces
    :reader workspaces
    :initarg :workspaces
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetWorkspaceList-response (<GetWorkspaceList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetWorkspaceList-response> is deprecated: use niryo_one_msgs-srv:GetWorkspaceList-response instead.")))

(cl:ensure-generic-function 'workspaces-val :lambda-list '(m))
(cl:defmethod workspaces-val ((m <GetWorkspaceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:workspaces-val is deprecated.  Use niryo_one_msgs-srv:workspaces instead.")
  (workspaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceList-response>) ostream)
  "Serializes a message object of type '<GetWorkspaceList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'workspaces))))
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
   (cl:slot-value msg 'workspaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceList-response>) istream)
  "Deserializes a message object of type '<GetWorkspaceList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'workspaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'workspaces)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceList-response>)))
  "Returns string type for a service object of type '<GetWorkspaceList-response>"
  "niryo_one_msgs/GetWorkspaceListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceList-response)))
  "Returns string type for a service object of type 'GetWorkspaceList-response"
  "niryo_one_msgs/GetWorkspaceListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceList-response>)))
  "Returns md5sum for a message object of type '<GetWorkspaceList-response>"
  "8b36c598e23fd962676550874c6879f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceList-response)))
  "Returns md5sum for a message object of type 'GetWorkspaceList-response"
  "8b36c598e23fd962676550874c6879f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceList-response>)))
  "Returns full string definition for message of type '<GetWorkspaceList-response>"
  (cl:format cl:nil "string[] workspaces~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceList-response)))
  "Returns full string definition for message of type 'GetWorkspaceList-response"
  (cl:format cl:nil "string[] workspaces~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'workspaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceList-response
    (cl:cons ':workspaces (workspaces msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorkspaceList)))
  'GetWorkspaceList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorkspaceList)))
  'GetWorkspaceList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceList)))
  "Returns string type for a service object of type '<GetWorkspaceList>"
  "niryo_one_msgs/GetWorkspaceList")