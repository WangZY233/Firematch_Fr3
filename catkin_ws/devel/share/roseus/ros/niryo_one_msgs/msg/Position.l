;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::Position)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'Position (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::POSITION")
  (make-package "NIRYO_ONE_MSGS::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_one_msgs::Position
  :super ros::object
  :slots (_name _joints _rpy _point _quaternion ))

(defmethod niryo_one_msgs::Position
  (:init
   (&key
    ((:name __name) "")
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (instance niryo_one_msgs::RPY :init))
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _joints __joints)
   (setq _rpy __rpy)
   (setq _point __point)
   (setq _quaternion __quaternion)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64[] _joints
    (* 8    (length _joints)) 4
    ;; niryo_one_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; niryo_one_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; niryo_one_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(setf (get niryo_one_msgs::Position :md5sum-) "0feca3eb53781851658482e6557e2045")
(setf (get niryo_one_msgs::Position :datatype-) "niryo_one_msgs/Position")
(setf (get niryo_one_msgs::Position :definition-)
      "string name

float64[] joints 
niryo_one_msgs/RPY rpy
geometry_msgs/Point point
geometry_msgs/Quaternion quaternion


================================================================================
MSG: niryo_one_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :niryo_one_msgs/Position "0feca3eb53781851658482e6557e2045")


