;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::Sequence)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'Sequence (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::SEQUENCE")
  (make-package "NIRYO_ONE_MSGS::SEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude Sequence.msg.html


(defclass niryo_one_msgs::Sequence
  :super ros::object
  :slots (_id _name _description _created _updated _blockly_xml _python_code ))

(defmethod niryo_one_msgs::Sequence
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:description __description) "")
    ((:created __created) 0)
    ((:updated __updated) 0)
    ((:blockly_xml __blockly_xml) "")
    ((:python_code __python_code) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _created (round __created))
   (setq _updated (round __updated))
   (setq _blockly_xml (string __blockly_xml))
   (setq _python_code (string __python_code))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:created
   (&optional __created)
   (if __created (setq _created __created)) _created)
  (:updated
   (&optional __updated)
   (if __updated (setq _updated __updated)) _updated)
  (:blockly_xml
   (&optional __blockly_xml)
   (if __blockly_xml (setq _blockly_xml __blockly_xml)) _blockly_xml)
  (:python_code
   (&optional __python_code)
   (if __python_code (setq _python_code __python_code)) _python_code)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; int32 _created
    4
    ;; int32 _updated
    4
    ;; string _blockly_xml
    4 (length _blockly_xml)
    ;; string _python_code
    4 (length _python_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; int32 _created
       (write-long _created s)
     ;; int32 _updated
       (write-long _updated s)
     ;; string _blockly_xml
       (write-long (length _blockly_xml) s) (princ _blockly_xml s)
     ;; string _python_code
       (write-long (length _python_code) s) (princ _python_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _created
     (setq _created (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _updated
     (setq _updated (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _blockly_xml
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _blockly_xml (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _python_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _python_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_one_msgs::Sequence :md5sum-) "f6a77265c058342138b72e566370ac7a")
(setf (get niryo_one_msgs::Sequence :datatype-) "niryo_one_msgs/Sequence")
(setf (get niryo_one_msgs::Sequence :definition-)
      "int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code

")



(provide :niryo_one_msgs/Sequence "f6a77265c058342138b72e566370ac7a")


