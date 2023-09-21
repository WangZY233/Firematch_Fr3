;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetSequenceList)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetSequenceList (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETSEQUENCELIST")
  (make-package "NIRYO_ONE_MSGS::GETSEQUENCELIST"))
(unless (find-package "NIRYO_ONE_MSGS::GETSEQUENCELISTREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETSEQUENCELISTREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETSEQUENCELISTRESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETSEQUENCELISTRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::GetSequenceListRequest
  :super ros::object
  :slots (_info_header_only ))

(defmethod niryo_one_msgs::GetSequenceListRequest
  (:init
   (&key
    ((:info_header_only __info_header_only) nil)
    )
   (send-super :init)
   (setq _info_header_only __info_header_only)
   self)
  (:info_header_only
   (&optional (__info_header_only :null))
   (if (not (eq __info_header_only :null)) (setq _info_header_only __info_header_only)) _info_header_only)
  (:serialization-length
   ()
   (+
    ;; bool _info_header_only
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _info_header_only
       (if _info_header_only (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _info_header_only
     (setq _info_header_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::GetSequenceListResponse
  :super ros::object
  :slots (_sequences ))

(defmethod niryo_one_msgs::GetSequenceListResponse
  (:init
   (&key
    ((:sequences __sequences) ())
    )
   (send-super :init)
   (setq _sequences __sequences)
   self)
  (:sequences
   (&rest __sequences)
   (if (keywordp (car __sequences))
       (send* _sequences __sequences)
     (progn
       (if __sequences (setq _sequences (car __sequences)))
       _sequences)))
  (:serialization-length
   ()
   (+
    ;; niryo_one_msgs/Sequence[] _sequences
    (apply #'+ (send-all _sequences :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_one_msgs/Sequence[] _sequences
     (write-long (length _sequences) s)
     (dolist (elem _sequences)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_one_msgs/Sequence[] _sequences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sequences (let (r) (dotimes (i n) (push (instance niryo_one_msgs::Sequence :init) r)) r))
     (dolist (elem- _sequences)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetSequenceList
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetSequenceList :md5sum-) "fc93b5ac839706215135d7128129cf9a")
(setf (get niryo_one_msgs::GetSequenceList :datatype-) "niryo_one_msgs/GetSequenceList")
(setf (get niryo_one_msgs::GetSequenceList :request) niryo_one_msgs::GetSequenceListRequest)
(setf (get niryo_one_msgs::GetSequenceList :response) niryo_one_msgs::GetSequenceListResponse)

(defmethod niryo_one_msgs::GetSequenceListRequest
  (:response () (instance niryo_one_msgs::GetSequenceListResponse :init)))

(setf (get niryo_one_msgs::GetSequenceListRequest :md5sum-) "fc93b5ac839706215135d7128129cf9a")
(setf (get niryo_one_msgs::GetSequenceListRequest :datatype-) "niryo_one_msgs/GetSequenceListRequest")
(setf (get niryo_one_msgs::GetSequenceListRequest :definition-)
      "bool info_header_only
---
niryo_one_msgs/Sequence[] sequences



================================================================================
MSG: niryo_one_msgs/Sequence
int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code
")

(setf (get niryo_one_msgs::GetSequenceListResponse :md5sum-) "fc93b5ac839706215135d7128129cf9a")
(setf (get niryo_one_msgs::GetSequenceListResponse :datatype-) "niryo_one_msgs/GetSequenceListResponse")
(setf (get niryo_one_msgs::GetSequenceListResponse :definition-)
      "bool info_header_only
---
niryo_one_msgs/Sequence[] sequences



================================================================================
MSG: niryo_one_msgs/Sequence
int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code
")



(provide :niryo_one_msgs/GetSequenceList "fc93b5ac839706215135d7128129cf9a")


