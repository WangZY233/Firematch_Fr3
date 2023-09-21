;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ManageSequence)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ManageSequence (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::MANAGESEQUENCE")
  (make-package "NIRYO_ONE_MSGS::MANAGESEQUENCE"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGESEQUENCEREQUEST")
  (make-package "NIRYO_ONE_MSGS::MANAGESEQUENCEREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::MANAGESEQUENCERESPONSE")
  (make-package "NIRYO_ONE_MSGS::MANAGESEQUENCERESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::ManageSequenceRequest
  :super ros::object
  :slots (_cmd_type _sequence_id _sequence ))

(defmethod niryo_one_msgs::ManageSequenceRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:sequence_id __sequence_id) 0)
    ((:sequence __sequence) (instance niryo_one_msgs::Sequence :init))
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _sequence_id (round __sequence_id))
   (setq _sequence __sequence)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:sequence_id
   (&optional __sequence_id)
   (if __sequence_id (setq _sequence_id __sequence_id)) _sequence_id)
  (:sequence
   (&rest __sequence)
   (if (keywordp (car __sequence))
       (send* _sequence __sequence)
     (progn
       (if __sequence (setq _sequence (car __sequence)))
       _sequence)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd_type
    4
    ;; int32 _sequence_id
    4
    ;; niryo_one_msgs/Sequence _sequence
    (send _sequence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd_type
       (write-long _cmd_type s)
     ;; int32 _sequence_id
       (write-long _sequence_id s)
     ;; niryo_one_msgs/Sequence _sequence
       (send _sequence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sequence_id
     (setq _sequence_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_one_msgs/Sequence _sequence
     (send _sequence :deserialize buf ptr-) (incf ptr- (send _sequence :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::ManageSequenceResponse
  :super ros::object
  :slots (_status _message _sequence ))

(defmethod niryo_one_msgs::ManageSequenceResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:sequence __sequence) (instance niryo_one_msgs::Sequence :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _sequence __sequence)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:sequence
   (&rest __sequence)
   (if (keywordp (car __sequence))
       (send* _sequence __sequence)
     (progn
       (if __sequence (setq _sequence (car __sequence)))
       _sequence)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_one_msgs/Sequence _sequence
    (send _sequence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_one_msgs/Sequence _sequence
       (send _sequence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_one_msgs/Sequence _sequence
     (send _sequence :deserialize buf ptr-) (incf ptr- (send _sequence :serialization-length))
   ;;
   self)
  )

(defclass niryo_one_msgs::ManageSequence
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::ManageSequence :md5sum-) "10143a290fd01d09f121d3105d3730fd")
(setf (get niryo_one_msgs::ManageSequence :datatype-) "niryo_one_msgs/ManageSequence")
(setf (get niryo_one_msgs::ManageSequence :request) niryo_one_msgs::ManageSequenceRequest)
(setf (get niryo_one_msgs::ManageSequence :response) niryo_one_msgs::ManageSequenceResponse)

(defmethod niryo_one_msgs::ManageSequenceRequest
  (:response () (instance niryo_one_msgs::ManageSequenceResponse :init)))

(setf (get niryo_one_msgs::ManageSequenceRequest :md5sum-) "10143a290fd01d09f121d3105d3730fd")
(setf (get niryo_one_msgs::ManageSequenceRequest :datatype-) "niryo_one_msgs/ManageSequenceRequest")
(setf (get niryo_one_msgs::ManageSequenceRequest :definition-)
      "int32 cmd_type

int32 sequence_id
niryo_one_msgs/Sequence sequence


================================================================================
MSG: niryo_one_msgs/Sequence
int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code
---
int32 status
string message

niryo_one_msgs/Sequence sequence


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

(setf (get niryo_one_msgs::ManageSequenceResponse :md5sum-) "10143a290fd01d09f121d3105d3730fd")
(setf (get niryo_one_msgs::ManageSequenceResponse :datatype-) "niryo_one_msgs/ManageSequenceResponse")
(setf (get niryo_one_msgs::ManageSequenceResponse :definition-)
      "int32 cmd_type

int32 sequence_id
niryo_one_msgs/Sequence sequence


================================================================================
MSG: niryo_one_msgs/Sequence
int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code
---
int32 status
string message

niryo_one_msgs/Sequence sequence


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



(provide :niryo_one_msgs/ManageSequence "10143a290fd01d09f121d3105d3730fd")


