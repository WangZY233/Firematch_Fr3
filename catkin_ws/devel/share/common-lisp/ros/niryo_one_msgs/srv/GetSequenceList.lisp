; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-srv)


;//! \htmlinclude GetSequenceList-request.msg.html

(cl:defclass <GetSequenceList-request> (roslisp-msg-protocol:ros-message)
  ((info_header_only
    :reader info_header_only
    :initarg :info_header_only
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetSequenceList-request (<GetSequenceList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSequenceList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSequenceList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetSequenceList-request> is deprecated: use niryo_one_msgs-srv:GetSequenceList-request instead.")))

(cl:ensure-generic-function 'info_header_only-val :lambda-list '(m))
(cl:defmethod info_header_only-val ((m <GetSequenceList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:info_header_only-val is deprecated.  Use niryo_one_msgs-srv:info_header_only instead.")
  (info_header_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSequenceList-request>) ostream)
  "Serializes a message object of type '<GetSequenceList-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'info_header_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSequenceList-request>) istream)
  "Deserializes a message object of type '<GetSequenceList-request>"
    (cl:setf (cl:slot-value msg 'info_header_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSequenceList-request>)))
  "Returns string type for a service object of type '<GetSequenceList-request>"
  "niryo_one_msgs/GetSequenceListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSequenceList-request)))
  "Returns string type for a service object of type 'GetSequenceList-request"
  "niryo_one_msgs/GetSequenceListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSequenceList-request>)))
  "Returns md5sum for a message object of type '<GetSequenceList-request>"
  "fc93b5ac839706215135d7128129cf9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSequenceList-request)))
  "Returns md5sum for a message object of type 'GetSequenceList-request"
  "fc93b5ac839706215135d7128129cf9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSequenceList-request>)))
  "Returns full string definition for message of type '<GetSequenceList-request>"
  (cl:format cl:nil "bool info_header_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSequenceList-request)))
  "Returns full string definition for message of type 'GetSequenceList-request"
  (cl:format cl:nil "bool info_header_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSequenceList-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSequenceList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSequenceList-request
    (cl:cons ':info_header_only (info_header_only msg))
))
;//! \htmlinclude GetSequenceList-response.msg.html

(cl:defclass <GetSequenceList-response> (roslisp-msg-protocol:ros-message)
  ((sequences
    :reader sequences
    :initarg :sequences
    :type (cl:vector niryo_one_msgs-msg:Sequence)
   :initform (cl:make-array 0 :element-type 'niryo_one_msgs-msg:Sequence :initial-element (cl:make-instance 'niryo_one_msgs-msg:Sequence))))
)

(cl:defclass GetSequenceList-response (<GetSequenceList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSequenceList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSequenceList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-srv:<GetSequenceList-response> is deprecated: use niryo_one_msgs-srv:GetSequenceList-response instead.")))

(cl:ensure-generic-function 'sequences-val :lambda-list '(m))
(cl:defmethod sequences-val ((m <GetSequenceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-srv:sequences-val is deprecated.  Use niryo_one_msgs-srv:sequences instead.")
  (sequences m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSequenceList-response>) ostream)
  "Serializes a message object of type '<GetSequenceList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sequences))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sequences))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSequenceList-response>) istream)
  "Deserializes a message object of type '<GetSequenceList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sequences) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sequences)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_one_msgs-msg:Sequence))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSequenceList-response>)))
  "Returns string type for a service object of type '<GetSequenceList-response>"
  "niryo_one_msgs/GetSequenceListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSequenceList-response)))
  "Returns string type for a service object of type 'GetSequenceList-response"
  "niryo_one_msgs/GetSequenceListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSequenceList-response>)))
  "Returns md5sum for a message object of type '<GetSequenceList-response>"
  "fc93b5ac839706215135d7128129cf9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSequenceList-response)))
  "Returns md5sum for a message object of type 'GetSequenceList-response"
  "fc93b5ac839706215135d7128129cf9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSequenceList-response>)))
  "Returns full string definition for message of type '<GetSequenceList-response>"
  (cl:format cl:nil "niryo_one_msgs/Sequence[] sequences~%~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSequenceList-response)))
  "Returns full string definition for message of type 'GetSequenceList-response"
  (cl:format cl:nil "niryo_one_msgs/Sequence[] sequences~%~%~%~%================================================================================~%MSG: niryo_one_msgs/Sequence~%int32 id~%string name~%string description~%~%int32 created~%int32 updated~%~%string blockly_xml~%string python_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSequenceList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sequences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSequenceList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSequenceList-response
    (cl:cons ':sequences (sequences msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSequenceList)))
  'GetSequenceList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSequenceList)))
  'GetSequenceList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSequenceList)))
  "Returns string type for a service object of type '<GetSequenceList>"
  "niryo_one_msgs/GetSequenceList")