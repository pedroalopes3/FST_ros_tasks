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
include task2/CMakeFiles/task2_talker.dir/depend.make

# Include the progress variables for this target.
include task2/CMakeFiles/task2_talker.dir/progress.make

# Include the compile flags for this target's objects.
include task2/CMakeFiles/task2_talker.dir/flags.make

task2/CMakeFiles/task2_talker.dir/src/talker.cpp.o: task2/CMakeFiles/task2_talker.dir/flags.make
task2/CMakeFiles/task2_talker.dir/src/talker.cpp.o: /home/pedroalopes3/catkin_ws/src/task2/src/talker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pedroalopes3/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object task2/CMakeFiles/task2_talker.dir/src/talker.cpp.o"
	cd /home/pedroalopes3/catkin_ws/build/task2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task2_talker.dir/src/talker.cpp.o -c /home/pedroalopes3/catkin_ws/src/task2/src/talker.cpp

task2/CMakeFiles/task2_talker.dir/src/talker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task2_talker.dir/src/talker.cpp.i"
	cd /home/pedroalopes3/catkin_ws/build/task2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pedroalopes3/catkin_ws/src/task2/src/talker.cpp > CMakeFiles/task2_talker.dir/src/talker.cpp.i

task2/CMakeFiles/task2_talker.dir/src/talker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task2_talker.dir/src/talker.cpp.s"
	cd /home/pedroalopes3/catkin_ws/build/task2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pedroalopes3/catkin_ws/src/task2/src/talker.cpp -o CMakeFiles/task2_talker.dir/src/talker.cpp.s

# Object files for target task2_talker
task2_talker_OBJECTS = \
"CMakeFiles/task2_talker.dir/src/talker.cpp.o"

# External object files for target task2_talker
task2_talker_EXTERNAL_OBJECTS =

/home/pedroalopes3/catkin_ws/devel/lib/task2/task2_talker: task2/CMakeFiles/task2_talker.dir/src/talker.cpp.o
/home/pedroalopes3/catkin_ws/devel/lib/task2/task2_talker: task2/CMakeFiles/task2_talker.dir/build.make
/home/pedroalopes3/catkin_ws/devel/lib/task2/task2_talker: task2/CMakeFiles/task2_talker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pedroalopes3/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pedroalopes3/catkin_ws/devel/lib/task2/task2_talker"
	cd /home/pedroalopes3/catkin_ws/build/task2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task2_talker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
task2/CMakeFiles/task2_talker.dir/build: /home/pedroalopes3/catkin_ws/devel/lib/task2/task2_talker

.PHONY : task2/CMakeFiles/task2_talker.dir/build

task2/CMakeFiles/task2_talker.dir/clean:
	cd /home/pedroalopes3/catkin_ws/build/task2 && $(CMAKE_COMMAND) -P CMakeFiles/task2_talker.dir/cmake_clean.cmake
.PHONY : task2/CMakeFiles/task2_talker.dir/clean

task2/CMakeFiles/task2_talker.dir/depend:
	cd /home/pedroalopes3/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pedroalopes3/catkin_ws/src /home/pedroalopes3/catkin_ws/src/task2 /home/pedroalopes3/catkin_ws/build /home/pedroalopes3/catkin_ws/build/task2 /home/pedroalopes3/catkin_ws/build/task2/CMakeFiles/task2_talker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task2/CMakeFiles/task2_talker.dir/depend

