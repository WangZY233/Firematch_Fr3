;; Auto-generated. Do not edit!


(when (boundp 'niryo_moveit::MoverService)
  (if (not (find-package "NIRYO_MOVEIT"))
    (make-package "NIRYO_MOVEIT"))
  (shadow 'MoverService (find-package "NIRYO_MOVEIT")))
(unless (find-package "NIRYO_MOVEIT::MOVERSERVICE")
  (make-package "NIRYO_MOVEIT::MOVERSERVICE"))
(unless (find-package "NIRYO_MOVEIT::MOVERSERVICEREQUEST")
  (make-package "NIRYO_MOVEIT::MOVERSERVICEREQUEST"))
(unless (find-package "NIRYO_MOVEIT::MOVERSERVICERESPONSE")
  (make-package "NIRYO_MOVEIT::MOVERSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(defclass niryo_moveit::MoverServiceRequest
  :super ros::object
  :slots (_joints_input _pick_pose _place_pose ))

(defmethod niryo_moveit::MoverServiceRequest
  (:init
   (&key
    ((:joints_input __joints_input) (instance niryo_moveit::NiryoMoveitJoints :init))
    ((:pick_pose __pick_pose) (instance geometry_msgs::Pose :init))
    ((:place_pose __place_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _joints_input __joints_input)
   (setq _pick_pose __pick_pose)
   (setq _place_pose __place_pose)
   self)
  (:joints_input
   (&rest __joints_input)
   (if (keywordp (car __joints_input))
       (send* _joints_input __joints_input)
     (progn
       (if __joints_input (setq _joints_input (car __joints_input)))
       _joints_input)))
  (:pick_pose
   (&rest __pick_pose)
   (if (keywordp (car __pick_pose))
       (send* _pick_pose __pick_pose)
     (progn
       (if __pick_pose (setq _pick_pose (car __pick_pose)))
       _pick_pose)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:serialization-length
   ()
   (+
    ;; niryo_moveit/NiryoMoveitJoints _joints_input
    (send _joints_input :serialization-length)
    ;; geometry_msgs/Pose _pick_pose
    (send _pick_pose :serialization-length)
    ;; geometry_msgs/Pose _place_pose
    (send _place_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_moveit/NiryoMoveitJoints _joints_input
       (send _joints_input :serialize s)
     ;; geometry_msgs/Pose _pick_pose
       (send _pick_pose :serialize s)
     ;; geometry_msgs/Pose _place_pose
       (send _place_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_moveit/NiryoMoveitJoints _joints_input
     (send _joints_input :deserialize buf ptr-) (incf ptr- (send _joints_input :serialization-length))
   ;; geometry_msgs/Pose _pick_pose
     (send _pick_pose :deserialize buf ptr-) (incf ptr- (send _pick_pose :serialization-length))
   ;; geometry_msgs/Pose _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_moveit::MoverServiceResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod niryo_moveit::MoverServiceResponse
  (:init
   (&key
    ((:trajectories __trajectories) ())
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; moveit_msgs/RobotTrajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveit_msgs/RobotTrajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveit_msgs/RobotTrajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance moveit_msgs::RobotTrajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_moveit::MoverService
  :super ros::object
  :slots ())

(setf (get niryo_moveit::MoverService :md5sum-) "07e33edf2aa9c8e76159dde43e741ae0")
(setf (get niryo_moveit::MoverService :datatype-) "niryo_moveit/MoverService")
(setf (get niryo_moveit::MoverService :request) niryo_moveit::MoverServiceRequest)
(setf (get niryo_moveit::MoverService :response) niryo_moveit::MoverServiceResponse)

(defmethod niryo_moveit::MoverServiceRequest
  (:response () (instance niryo_moveit::MoverServiceResponse :init)))

(setf (get niryo_moveit::MoverServiceRequest :md5sum-) "07e33edf2aa9c8e76159dde43e741ae0")
(setf (get niryo_moveit::MoverServiceRequest :datatype-) "niryo_moveit/MoverServiceRequest")
(setf (get niryo_moveit::MoverServiceRequest :definition-)
      "NiryoMoveitJoints joints_input
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: niryo_moveit/NiryoMoveitJoints
float64[6] joints
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
---
moveit_msgs/RobotTrajectory[] trajectories

================================================================================
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")

(setf (get niryo_moveit::MoverServiceResponse :md5sum-) "07e33edf2aa9c8e76159dde43e741ae0")
(setf (get niryo_moveit::MoverServiceResponse :datatype-) "niryo_moveit/MoverServiceResponse")
(setf (get niryo_moveit::MoverServiceResponse :definition-)
      "NiryoMoveitJoints joints_input
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: niryo_moveit/NiryoMoveitJoints
float64[6] joints
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
---
moveit_msgs/RobotTrajectory[] trajectories

================================================================================
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")



(provide :niryo_moveit/MoverService "07e33edf2aa9c8e76159dde43e741ae0")


