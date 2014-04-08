# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "controller_manager_msgs: 3 messages, 6 services")

set(MSG_I_FLAGS "-Icontroller_manager_msgs:/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(controller_manager_msgs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllersStatistics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)

### Generating Services
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllers.srv"
  "${MSG_I_FLAGS}"
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/SwitchController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllerTypes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/LoadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/UnloadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_cpp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ReloadControllerLibraries.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
)

### Generating Module File
_generate_module_cpp(controller_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(controller_manager_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(controller_manager_msgs_generate_messages controller_manager_msgs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(controller_manager_msgs_gencpp)
add_dependencies(controller_manager_msgs_gencpp controller_manager_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controller_manager_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllersStatistics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)

### Generating Services
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllers.srv"
  "${MSG_I_FLAGS}"
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/SwitchController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllerTypes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/LoadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/UnloadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_lisp(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ReloadControllerLibraries.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
)

### Generating Module File
_generate_module_lisp(controller_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(controller_manager_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(controller_manager_msgs_generate_messages controller_manager_msgs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(controller_manager_msgs_genlisp)
add_dependencies(controller_manager_msgs_genlisp controller_manager_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controller_manager_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllersStatistics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_msg_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)

### Generating Services
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllers.srv"
  "${MSG_I_FLAGS}"
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/SwitchController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ListControllerTypes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/LoadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/UnloadController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)
_generate_srv_py(controller_manager_msgs
  "/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/ReloadControllerLibraries.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
)

### Generating Module File
_generate_module_py(controller_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(controller_manager_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(controller_manager_msgs_generate_messages controller_manager_msgs_generate_messages_py)

# target for backward compatibility
add_custom_target(controller_manager_msgs_genpy)
add_dependencies(controller_manager_msgs_genpy controller_manager_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controller_manager_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controller_manager_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(controller_manager_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controller_manager_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(controller_manager_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controller_manager_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(controller_manager_msgs_generate_messages_py std_msgs_generate_messages_py)
