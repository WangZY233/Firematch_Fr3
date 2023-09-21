;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetPositionList)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetPositionList (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETPOSITIONLIST")
  (make-package "NIRYO_ONE_MSGS::GETPOSITIONLIST"))
(unless (find-package "NIRYO_ONE_MSGS::GETPOSITIONLISTREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETPOSITIONLISTREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETPOSITIONLISTRESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETPOSITIONLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::GetPositionListRequest
  :super ros::object
  :slots ())

(defmethod niryo_one_msgs::GetPositionListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetPositionListResponse
  :super ros::object
  :slots (_positions ))

(defmethod niryo_one_msgs::GetPositionListResponse
  (:init
   (&key
    ((:positions __positions) ())
    )
   (send-super :init)
   (setq _positions __positions)
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; niryo_one_msgs/Position[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_one_msgs/Position[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_one_msgs/Position[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance niryo_one_msgs::Position :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetPositionList
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetPositionList :md5sum-) "94fc33768181f413c5377ded0d0f7df2")
(setf (get niryo_one_msgs::GetPositionList :datatype-) "niryo_one_msgs/GetPositionList")
(setf (get niryo_one_msgs::GetPositionList :request) niryo_one_msgs::GetPositionListRequest)
(setf (get niryo_one_msgs::GetPositionList :response) niryo_one_msgs::GetPositionListResponse)

(defmethod niryo_one_msgs::GetPositionListRequest
  (:response () (instance niryo_one_msgs::GetPositionListResponse :init)))

(setf (get niryo_one_msgs::GetPositionListRequest :md5sum-) "94fc33768181f413c5377ded0d0f7df2")
(setf (get niryo_one_msgs::GetPositionListRequest :datatype-) "niryo_one_msgs/GetPositionListRequest")
(setf (get niryo_one_msgs::GetPositionListRequest :definition-)
      "
---
niryo_one_msgs/Position[] positions


================================================================================
MSG: niryo_one_msgs/Position
string name

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

(setf (get niryo_one_msgs::GetPositionListResponse :md5sum-) "94fc33768181f413c5377ded0d0f7df2")
(setf (get niryo_one_msgs::GetPositionListResponse :datatype-) "niryo_one_msgs/GetPositionListResponse")
(setf (get niryo_one_msgs::GetPositionListResponse :definition-)
      "
---
niryo_one_msgs/Position[] positions


================================================================================
MSG: niryo_one_msgs/Position
string name

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



(provide :niryo_one_msgs/GetPositionList "94fc33768181f413c5377ded0d0f7df2")


