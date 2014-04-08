execute_process(COMMAND "/home/visual-servoing/ros/ws_baxter/build/baxter_tools/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/visual-servoing/ros/ws_baxter/build/baxter_tools/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
