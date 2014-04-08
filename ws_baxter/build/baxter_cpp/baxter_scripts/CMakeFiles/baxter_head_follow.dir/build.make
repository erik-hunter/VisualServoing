# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/visual-servoing/ros/ws_baxter/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/visual-servoing/ros/ws_baxter/build

# Include any dependencies generated for this target.
include baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/depend.make

# Include the progress variables for this target.
include baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/progress.make

# Include the compile flags for this target's objects.
include baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/flags.make

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/flags.make
baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o: /home/visual-servoing/ros/ws_baxter/src/baxter_cpp/baxter_scripts/src/baxter_head_follow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/visual-servoing/ros/ws_baxter/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o"
	cd /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o -c /home/visual-servoing/ros/ws_baxter/src/baxter_cpp/baxter_scripts/src/baxter_head_follow.cpp

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.i"
	cd /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/visual-servoing/ros/ws_baxter/src/baxter_cpp/baxter_scripts/src/baxter_head_follow.cpp > CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.i

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.s"
	cd /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/visual-servoing/ros/ws_baxter/src/baxter_cpp/baxter_scripts/src/baxter_head_follow.cpp -o CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.s

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.requires:
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.requires

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.provides: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.requires
	$(MAKE) -f baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/build.make baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.provides.build
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.provides

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.provides.build: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o

# Object files for target baxter_head_follow
baxter_head_follow_OBJECTS = \
"CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o"

# External object files for target baxter_head_follow
baxter_head_follow_EXTERNAL_OBJECTS =

/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libcv_bridge.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_calib3d.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_contrib.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_core.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_features2d.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_flann.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_gpu.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_highgui.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_imgproc.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_legacy.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_ml.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_nonfree.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_objdetect.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_photo.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_stitching.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_superres.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_video.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libopencv_videostab.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libroscpp.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_signals-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_filesystem-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/librosconsole.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/librosconsole_log4cxx.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/librosconsole_backend_interface.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/liblog4cxx.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_regex-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libxmlrpcpp.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libroscpp_serialization.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/librostime.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_date_time-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_system-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/libboost_thread-mt.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libcpp_common.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: /opt/ros/hydro/lib/libconsole_bridge.so
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/build.make
/home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow"
	cd /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/baxter_head_follow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/build: /home/visual-servoing/ros/ws_baxter/devel/lib/baxter_scripts/baxter_head_follow
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/build

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/requires: baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/src/baxter_head_follow.cpp.o.requires
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/requires

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/clean:
	cd /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts && $(CMAKE_COMMAND) -P CMakeFiles/baxter_head_follow.dir/cmake_clean.cmake
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/clean

baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/depend:
	cd /home/visual-servoing/ros/ws_baxter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/visual-servoing/ros/ws_baxter/src /home/visual-servoing/ros/ws_baxter/src/baxter_cpp/baxter_scripts /home/visual-servoing/ros/ws_baxter/build /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts /home/visual-servoing/ros/ws_baxter/build/baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : baxter_cpp/baxter_scripts/CMakeFiles/baxter_head_follow.dir/depend
