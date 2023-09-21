execute_process(COMMAND "/home/wangzy/Workspace/Fr3_workspace/catkin_ws/build/frcobot_ros/ros_tcp_endpoint/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wangzy/Workspace/Fr3_workspace/catkin_ws/build/frcobot_ros/ros_tcp_endpoint/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
