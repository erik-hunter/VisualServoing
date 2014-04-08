# Install script for directory: /home/visual-servoing/ros/ws_baxter/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/visual-servoing/ros/ws_baxter/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/.catkin")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE FILE FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/.catkin")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/_setup_util.py")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE PROGRAM FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/env.sh")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE PROGRAM FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/setup.bash")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE FILE FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/setup.sh")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE FILE FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/setup.zsh")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE FILE FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/visual-servoing/ros/ws_baxter/install/.rosinstall")
FILE(INSTALL DESTINATION "/home/visual-servoing/ros/ws_baxter/install" TYPE FILE FILES "/home/visual-servoing/ros/ws_baxter/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make_isolated.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/gtest/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/controller_manager_msgs/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/hardware_interface/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/controller_interface/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/controller_manager/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/controller_manager_tests/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/force_torque_sensor_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/forward_command_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/effort_controllers/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/imu_sensor_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/joint_limits_interface/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/joint_mode_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/joint_state_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/joint_trajectory_controller/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/position_controllers/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/ros_control/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/ros_controllers/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_control/transmission_interface/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/ros_controllers/velocity_controllers/cmake_install.cmake")
  INCLUDE("/home/visual-servoing/ros/ws_baxter/build/visual_servo/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/visual-servoing/ros/ws_baxter/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/visual-servoing/ros/ws_baxter/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
