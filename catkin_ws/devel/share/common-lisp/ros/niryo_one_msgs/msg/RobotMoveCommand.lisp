; Auto-generated. Do not edit!


(cl:in-package niryo_one_msgs-msg)


;//! \htmlinclude RobotMoveCommand.msg.html

(cl:defclass <RobotMoveCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:integer
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type niryo_one_msgs-msg:RPY
    :initform (cl:make-instance 'niryo_one_msgs-msg:RPY))
   (shift
    :reader shift
    :initarg :shift
    :type niryo_one_msgs-msg:ShiftPose
    :initform (cl:make-instance 'niryo_one_msgs-msg:ShiftPose))
   (Trajectory
    :reader Trajectory
    :initarg :Trajectory
    :type niryo_one_msgs-msg:TrajectoryPlan
    :initform (cl:make-instance 'niryo_one_msgs-msg:TrajectoryPlan))
   (pose_quat
    :reader pose_quat
    :initarg :pose_quat
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (saved_position_name
    :reader saved_position_name
    :initarg :saved_position_name
    :type cl:string
    :initform "")
   (saved_trajectory_id
    :reader saved_trajectory_id
    :initarg :saved_trajectory_id
    :type cl:integer
    :initform 0)
   (tool_cmd
    :reader tool_cmd
    :initarg :tool_cmd
    :type niryo_one_msgs-msg:ToolCommand
    :initform (cl:make-instance 'niryo_one_msgs-msg:ToolCommand)))
)

(cl:defclass RobotMoveCommand (<RobotMoveCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMoveCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMoveCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_one_msgs-msg:<RobotMoveCommand> is deprecated: use niryo_one_msgs-msg:RobotMoveCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:cmd_type-val is deprecated.  Use niryo_one_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:joints-val is deprecated.  Use niryo_one_msgs-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:position-val is deprecated.  Use niryo_one_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:rpy-val is deprecated.  Use niryo_one_msgs-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:shift-val is deprecated.  Use niryo_one_msgs-msg:shift instead.")
  (shift m))

(cl:ensure-generic-function 'Trajectory-val :lambda-list '(m))
(cl:defmethod Trajectory-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:Trajectory-val is deprecated.  Use niryo_one_msgs-msg:Trajectory instead.")
  (Trajectory m))

(cl:ensure-generic-function 'pose_quat-val :lambda-list '(m))
(cl:defmethod pose_quat-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:pose_quat-val is deprecated.  Use niryo_one_msgs-msg:pose_quat instead.")
  (pose_quat m))

(cl:ensure-generic-function 'saved_position_name-val :lambda-list '(m))
(cl:defmethod saved_position_name-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:saved_position_name-val is deprecated.  Use niryo_one_msgs-msg:saved_position_name instead.")
  (saved_position_name m))

(cl:ensure-generic-function 'saved_trajectory_id-val :lambda-list '(m))
(cl:defmethod saved_trajectory_id-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:saved_trajectory_id-val is deprecated.  Use niryo_one_msgs-msg:saved_trajectory_id instead.")
  (saved_trajectory_id m))

(cl:ensure-generic-function 'tool_cmd-val :lambda-list '(m))
(cl:defmethod tool_cmd-val ((m <RobotMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_one_msgs-msg:tool_cmd-val is deprecated.  Use niryo_one_msgs-msg:tool_cmd instead.")
  (tool_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMoveCommand>) ostream)
  "Serializes a message object of type '<RobotMoveCommand>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_quat) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'saved_position_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'saved_position_name))
  (cl:let* ((signed (cl:slot-value msg 'saved_trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tool_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMoveCommand>) istream)
  "Deserializes a message object of type '<RobotMoveCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_quat) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saved_position_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'saved_position_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saved_trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tool_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMoveCommand>)))
  "Returns string type for a message object of type '<RobotMoveCommand>"
  "niryo_one_msgs/RobotMoveCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMoveCommand)))
  "Returns string type for a message object of type 'RobotMoveCommand"
  "niryo_one_msgs/RobotMoveCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMoveCommand>)))
  "Returns md5sum for a message object of type '<RobotMoveCommand>"
  "b44d7c04a6634db91a20bfa4cb1aec91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMoveCommand)))
  "Returns md5sum for a message object of type 'RobotMoveCommand"
  "b44d7c04a6634db91a20bfa4cb1aec91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMoveCommand>)))
  "Returns full string definition for message of type '<RobotMoveCommand>"
  (cl:format cl:nil "~%int32 cmd_type~%~%float64[] joints~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%niryo_one_msgs/ShiftPose shift~%niryo_one_msgs/TrajectoryPlan Trajectory~%geometry_msgs/Pose pose_quat~%string  saved_position_name~%int32 saved_trajectory_id ~%~%niryo_one_msgs/ToolCommand tool_cmd~%~%# In the future, allow a tool command to be launched at the same time as an Arm command~%# 3 choices : arm only, arm + tool, tool only~%# bool use_tool ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: niryo_one_msgs/ShiftPose~%~%int32 axis_number~%float64 value~%~%================================================================================~%MSG: niryo_one_msgs/TrajectoryPlan~%moveit_msgs/RobotState trajectory_start~%string group_name~%moveit_msgs/RobotTrajectory trajectory~%~%================================================================================~%MSG: moveit_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%~%# Joints that may have multiple DOF are specified here~%sensor_msgs/MultiDOFJointState multi_dof_joint_state~%~%# Attached collision objects (attached to some link on the robot)~%AttachedCollisionObject[] attached_collision_objects~%~%# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene~%# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies~%# of a moveit::core::RobotState before updating it with this message)~%bool is_diff~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/MultiDOFJointState~%# Representation of state for joints with multiple degrees of freedom, ~%# following the structure of JointState.~%#~%# It is assumed that a joint in a system corresponds to a transform that gets applied ~%# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)~%# and those 3DOF can be expressed as a transformation matrix, and that transformation~%# matrix can be converted back to (x, y, yaw)~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# wrench associated with them, you can leave the wrench array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%Header header~%~%string[] joint_names~%geometry_msgs/Transform[] transforms~%geometry_msgs/Twist[] twist~%geometry_msgs/Wrench[] wrench~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: moveit_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%string link_name~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is already considered by default~%string[] touch_links~%~%# If certain links were placed in a particular posture for this object to remain attached ~%# (e.g., an end effector closing around an object), the posture necessary for releasing~%# the object is stored here~%trajectory_msgs/JointTrajectory detach_posture~%~%# The weight of the attached object, if known~%float64 weight~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# DISCLAIMER: This field is not in use yet and all other poses~%# are still interpreted in the header frame.~%# https://github.com/ros-planning/moveit/pull/2037~%# implements the actual logic for this field.~%# ---~%# The object's pose relative to the header frame.~%# The shapes and subframe poses are defined relative to this pose.~%geometry_msgs/Pose pose~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the object's pose~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Named subframes on the object. Use these to define points of interest on the object that you want~%# to plan with (e.g. \"tip\", \"spout\", \"handle\"). The id of the object will be prepended to the subframe.~%# If an object with the id \"screwdriver\" and a subframe \"tip\" is in the scene, you can use the frame~%# \"screwdriver/tip\" for planning.~%# The length of the subframe_names and subframe_poses has to be identical.~%string[] subframe_names~%geometry_msgs/Pose[] subframe_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: niryo_one_msgs/ToolCommand~%~%uint8 tool_id~%uint8 cmd_type~%~%# if gripper close~%uint16 gripper_close_speed~%~%# if gripper open~%uint16 gripper_open_speed~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%uint8 gpio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMoveCommand)))
  "Returns full string definition for message of type 'RobotMoveCommand"
  (cl:format cl:nil "~%int32 cmd_type~%~%float64[] joints~%geometry_msgs/Point position~%niryo_one_msgs/RPY rpy~%niryo_one_msgs/ShiftPose shift~%niryo_one_msgs/TrajectoryPlan Trajectory~%geometry_msgs/Pose pose_quat~%string  saved_position_name~%int32 saved_trajectory_id ~%~%niryo_one_msgs/ToolCommand tool_cmd~%~%# In the future, allow a tool command to be launched at the same time as an Arm command~%# 3 choices : arm only, arm + tool, tool only~%# bool use_tool ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_one_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: niryo_one_msgs/ShiftPose~%~%int32 axis_number~%float64 value~%~%================================================================================~%MSG: niryo_one_msgs/TrajectoryPlan~%moveit_msgs/RobotState trajectory_start~%string group_name~%moveit_msgs/RobotTrajectory trajectory~%~%================================================================================~%MSG: moveit_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%~%# Joints that may have multiple DOF are specified here~%sensor_msgs/MultiDOFJointState multi_dof_joint_state~%~%# Attached collision objects (attached to some link on the robot)~%AttachedCollisionObject[] attached_collision_objects~%~%# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene~%# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies~%# of a moveit::core::RobotState before updating it with this message)~%bool is_diff~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/MultiDOFJointState~%# Representation of state for joints with multiple degrees of freedom, ~%# following the structure of JointState.~%#~%# It is assumed that a joint in a system corresponds to a transform that gets applied ~%# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)~%# and those 3DOF can be expressed as a transformation matrix, and that transformation~%# matrix can be converted back to (x, y, yaw)~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# wrench associated with them, you can leave the wrench array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%Header header~%~%string[] joint_names~%geometry_msgs/Transform[] transforms~%geometry_msgs/Twist[] twist~%geometry_msgs/Wrench[] wrench~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: moveit_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%string link_name~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is already considered by default~%string[] touch_links~%~%# If certain links were placed in a particular posture for this object to remain attached ~%# (e.g., an end effector closing around an object), the posture necessary for releasing~%# the object is stored here~%trajectory_msgs/JointTrajectory detach_posture~%~%# The weight of the attached object, if known~%float64 weight~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# DISCLAIMER: This field is not in use yet and all other poses~%# are still interpreted in the header frame.~%# https://github.com/ros-planning/moveit/pull/2037~%# implements the actual logic for this field.~%# ---~%# The object's pose relative to the header frame.~%# The shapes and subframe poses are defined relative to this pose.~%geometry_msgs/Pose pose~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the object's pose~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Named subframes on the object. Use these to define points of interest on the object that you want~%# to plan with (e.g. \"tip\", \"spout\", \"handle\"). The id of the object will be prepended to the subframe.~%# If an object with the id \"screwdriver\" and a subframe \"tip\" is in the scene, you can use the frame~%# \"screwdriver/tip\" for planning.~%# The length of the subframe_names and subframe_poses has to be identical.~%string[] subframe_names~%geometry_msgs/Pose[] subframe_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: niryo_one_msgs/ToolCommand~%~%uint8 tool_id~%uint8 cmd_type~%~%# if gripper close~%uint16 gripper_close_speed~%~%# if gripper open~%uint16 gripper_open_speed~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%uint8 gpio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMoveCommand>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_quat))
     4 (cl:length (cl:slot-value msg 'saved_position_name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMoveCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMoveCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':shift (shift msg))
    (cl:cons ':Trajectory (Trajectory msg))
    (cl:cons ':pose_quat (pose_quat msg))
    (cl:cons ':saved_position_name (saved_position_name msg))
    (cl:cons ':saved_trajectory_id (saved_trajectory_id msg))
    (cl:cons ':tool_cmd (tool_cmd msg))
))
