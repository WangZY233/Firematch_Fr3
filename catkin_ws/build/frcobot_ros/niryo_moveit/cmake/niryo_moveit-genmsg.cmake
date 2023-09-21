# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_moveit: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iniryo_moveit:/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Imoveit_msgs:/home/wangzy/Workspace/Fr3_workspace/catkin_ws/devel/share/moveit_msgs/msg;-Imoveit_msgs:/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/noetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_moveit_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_custom_target(_niryo_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_moveit" "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_custom_target(_niryo_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_moveit" "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" "trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:trajectory_msgs/MultiDOFJointTrajectory:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Twist:trajectory_msgs/JointTrajectory:geometry_msgs/Transform:moveit_msgs/RobotTrajectory"
)

get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_custom_target(_niryo_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_moveit" "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" "trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:trajectory_msgs/MultiDOFJointTrajectory:niryo_moveit/NiryoMoveitJoints:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Twist:geometry_msgs/Point:trajectory_msgs/JointTrajectory:geometry_msgs/Pose:geometry_msgs/Transform:moveit_msgs/RobotTrajectory"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit
)
_generate_msg_cpp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit
)

### Generating Services
_generate_srv_cpp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit
)

### Generating Module File
_generate_module_cpp(niryo_moveit
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_moveit_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_moveit_generate_messages niryo_moveit_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_cpp _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_cpp _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_cpp _niryo_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_moveit_gencpp)
add_dependencies(niryo_moveit_gencpp niryo_moveit_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_moveit_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit
)
_generate_msg_eus(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit
)

### Generating Services
_generate_srv_eus(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit
)

### Generating Module File
_generate_module_eus(niryo_moveit
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_moveit_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_moveit_generate_messages niryo_moveit_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_eus _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_eus _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_eus _niryo_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_moveit_geneus)
add_dependencies(niryo_moveit_geneus niryo_moveit_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_moveit_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit
)
_generate_msg_lisp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit
)

### Generating Services
_generate_srv_lisp(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit
)

### Generating Module File
_generate_module_lisp(niryo_moveit
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_moveit_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_moveit_generate_messages niryo_moveit_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_lisp _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_lisp _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_lisp _niryo_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_moveit_genlisp)
add_dependencies(niryo_moveit_genlisp niryo_moveit_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_moveit_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit
)
_generate_msg_nodejs(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit
)

### Generating Services
_generate_srv_nodejs(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit
)

### Generating Module File
_generate_module_nodejs(niryo_moveit
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_moveit_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_moveit_generate_messages niryo_moveit_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_nodejs _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_nodejs _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_nodejs _niryo_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_moveit_gennodejs)
add_dependencies(niryo_moveit_gennodejs niryo_moveit_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_moveit_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit
)
_generate_msg_py(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit
)

### Generating Services
_generate_srv_py(niryo_moveit
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/moveit_msgs/msg/RobotTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit
)

### Generating Module File
_generate_module_py(niryo_moveit
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_moveit_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_moveit_generate_messages niryo_moveit_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoMoveitJoints.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_py _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/msg/NiryoTrajectory.msg" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_py _niryo_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/niryo_moveit/srv/MoverService.srv" NAME_WE)
add_dependencies(niryo_moveit_generate_messages_py _niryo_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_moveit_genpy)
add_dependencies(niryo_moveit_genpy niryo_moveit_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_moveit_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_moveit
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_moveit_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_moveit_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(niryo_moveit_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(niryo_moveit_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_moveit
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_moveit_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(niryo_moveit_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(niryo_moveit_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(niryo_moveit_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_moveit
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_moveit_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(niryo_moveit_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(niryo_moveit_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(niryo_moveit_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_moveit
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_moveit_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(niryo_moveit_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(niryo_moveit_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(niryo_moveit_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_moveit
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_moveit_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_moveit_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(niryo_moveit_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(niryo_moveit_generate_messages_py sensor_msgs_generate_messages_py)
endif()
