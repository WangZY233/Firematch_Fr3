;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::PingDxlTool)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'PingDxlTool (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::PINGDXLTOOL")
  (make-package "NIRYO_ONE_MSGS::PINGDXLTOOL"))
(unless (find-package "NIRYO_ONE_MSGS::PINGDXLTOOLREQUEST")
  (make-package "NIRYO_ONE_MSGS::PINGDXLTOOLREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::PINGDXLTOOLRESPONSE")
  (make-package "NIRYO_ONE_MSGS::PINGDXLTOOLRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::PingDxlToolRequest
  :super ros::object
  :slots (_id _name ))

(defmethod niryo_one_msgs::PingDxlToolRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::PingDxlToolResponse
  :super ros::object
  :slots (_state ))

(defmethod niryo_one_msgs::PingDxlToolResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::PingDxlTool
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::PingDxlTool :md5sum-) "7c200c402935dab5cf534afa12896068")
(setf (get niryo_one_msgs::PingDxlTool :datatype-) "niryo_one_msgs/PingDxlTool")
(setf (get niryo_one_msgs::PingDxlTool :request) niryo_one_msgs::PingDxlToolRequest)
(setf (get niryo_one_msgs::PingDxlTool :response) niryo_one_msgs::PingDxlToolResponse)

(defmethod niryo_one_msgs::PingDxlToolRequest
  (:response () (instance niryo_one_msgs::PingDxlToolResponse :init)))

(setf (get niryo_one_msgs::PingDxlToolRequest :md5sum-) "7c200c402935dab5cf534afa12896068")
(setf (get niryo_one_msgs::PingDxlToolRequest :datatype-) "niryo_one_msgs/PingDxlToolRequest")
(setf (get niryo_one_msgs::PingDxlToolRequest :definition-)
      "uint8 id
string name
---
uint8 state

")

(setf (get niryo_one_msgs::PingDxlToolResponse :md5sum-) "7c200c402935dab5cf534afa12896068")
(setf (get niryo_one_msgs::PingDxlToolResponse :datatype-) "niryo_one_msgs/PingDxlToolResponse")
(setf (get niryo_one_msgs::PingDxlToolResponse :definition-)
      "uint8 id
string name
---
uint8 state

")



(provide :niryo_one_msgs/PingDxlTool "7c200c402935dab5cf534afa12896068")


