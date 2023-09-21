# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "frcobot_hw: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ifrcobot_hw:/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(frcobot_hw_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_custom_target(_frcobot_hw_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frcobot_hw" "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(frcobot_hw
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frcobot_hw
)

### Generating Services

### Generating Module File
_generate_module_cpp(frcobot_hw
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frcobot_hw
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(frcobot_hw_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(frcobot_hw_generate_messages frcobot_hw_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_dependencies(frcobot_hw_generate_messages_cpp _frcobot_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frcobot_hw_gencpp)
add_dependencies(frcobot_hw_gencpp frcobot_hw_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frcobot_hw_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(frcobot_hw
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frcobot_hw
)

### Generating Services

### Generating Module File
_generate_module_eus(frcobot_hw
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frcobot_hw
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(frcobot_hw_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(frcobot_hw_generate_messages frcobot_hw_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_dependencies(frcobot_hw_generate_messages_eus _frcobot_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frcobot_hw_geneus)
add_dependencies(frcobot_hw_geneus frcobot_hw_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frcobot_hw_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(frcobot_hw
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frcobot_hw
)

### Generating Services

### Generating Module File
_generate_module_lisp(frcobot_hw
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frcobot_hw
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(frcobot_hw_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(frcobot_hw_generate_messages frcobot_hw_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_dependencies(frcobot_hw_generate_messages_lisp _frcobot_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frcobot_hw_genlisp)
add_dependencies(frcobot_hw_genlisp frcobot_hw_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frcobot_hw_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(frcobot_hw
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frcobot_hw
)

### Generating Services

### Generating Module File
_generate_module_nodejs(frcobot_hw
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frcobot_hw
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(frcobot_hw_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(frcobot_hw_generate_messages frcobot_hw_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_dependencies(frcobot_hw_generate_messages_nodejs _frcobot_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frcobot_hw_gennodejs)
add_dependencies(frcobot_hw_gennodejs frcobot_hw_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frcobot_hw_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(frcobot_hw
  "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frcobot_hw
)

### Generating Services

### Generating Module File
_generate_module_py(frcobot_hw
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frcobot_hw
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(frcobot_hw_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(frcobot_hw_generate_messages frcobot_hw_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/src/frcobot_ros/frcobot_hw/msg/status.msg" NAME_WE)
add_dependencies(frcobot_hw_generate_messages_py _frcobot_hw_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frcobot_hw_genpy)
add_dependencies(frcobot_hw_genpy frcobot_hw_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frcobot_hw_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frcobot_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frcobot_hw
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(frcobot_hw_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frcobot_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frcobot_hw
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(frcobot_hw_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frcobot_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frcobot_hw
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(frcobot_hw_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frcobot_hw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frcobot_hw
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(frcobot_hw_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frcobot_hw)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frcobot_hw\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frcobot_hw
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(frcobot_hw_generate_messages_py std_msgs_generate_messages_py)
endif()
