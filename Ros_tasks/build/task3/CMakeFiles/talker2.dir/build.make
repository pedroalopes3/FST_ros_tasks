# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pedroalopes3/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pedroalopes3/catkin_ws/build

# Include any dependencies generated for this target.
include task3/CMakeFiles/talker2.dir/depend.make

# Include the progress variables for this target.
include task3/CMakeFiles/talker2.dir/progress.make

# Include the compile flags for this target's objects.
include task3/CMakeFiles/talker2.dir/flags.make

task3/CMakeFiles/talker2.dir/src/talker2.cpp.o: task3/CMakeFiles/talker2.dir/flags.make
task3/CMakeFiles/talker2.dir/src/talker2.cpp.o: /home/pedroalopes3/catkin_ws/src/task3/src/talker2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedroalopes3/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object task3/CMakeFiles/talker2.dir/src/talker2.cpp.o"
	cd /home/pedroalopes3/catkin_ws/build/task3 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/talker2.dir/src/talker2.cpp.o -c /home/pedroalopes3/catkin_ws/src/task3/src/talker2.cpp

task3/CMakeFiles/talker2.dir/src/talker2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/talker2.dir/src/talker2.cpp.i"
	cd /home/pedroalopes3/catkin_ws/build/task3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedroalopes3/catkin_ws/src/task3/src/talker2.cpp > CMakeFiles/talker2.dir/src/talker2.cpp.i

task3/CMakeFiles/talker2.dir/src/talker2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/talker2.dir/src/talker2.cpp.s"
	cd /home/pedroalopes3/catkin_ws/build/task3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedroalopes3/catkin_ws/src/task3/src/talker2.cpp -o CMakeFiles/talker2.dir/src/talker2.cpp.s

# Object files for target talker2
talker2_OBJECTS = \
"CMakeFiles/talker2.dir/src/talker2.cpp.o"

# External object files for target talker2
talker2_EXTERNAL_OBJECTS =

/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: task3/CMakeFiles/talker2.dir/src/talker2.cpp.o
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: task3/CMakeFiles/talker2.dir/build.make
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/libroscpp.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/librosconsole.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/librostime.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /opt/ros/noetic/lib/libcpp_common.so
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/pedroalopes3/catkin_ws/devel/lib/task3/talker2: task3/CMakeFiles/talker2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pedroalopes3/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pedroalopes3/catkin_ws/devel/lib/task3/talker2"
	cd /home/pedroalopes3/catkin_ws/build/task3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/talker2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
task3/CMakeFiles/talker2.dir/build: /home/pedroalopes3/catkin_ws/devel/lib/task3/talker2

.PHONY : task3/CMakeFiles/talker2.dir/build

task3/CMakeFiles/talker2.dir/clean:
	cd /home/pedroalopes3/catkin_ws/build/task3 && $(CMAKE_COMMAND) -P CMakeFiles/talker2.dir/cmake_clean.cmake
.PHONY : task3/CMakeFiles/talker2.dir/clean

task3/CMakeFiles/talker2.dir/depend:
	cd /home/pedroalopes3/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pedroalopes3/catkin_ws/src /home/pedroalopes3/catkin_ws/src/task3 /home/pedroalopes3/catkin_ws/build /home/pedroalopes3/catkin_ws/build/task3 /home/pedroalopes3/catkin_ws/build/task3/CMakeFiles/talker2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task3/CMakeFiles/talker2.dir/depend

