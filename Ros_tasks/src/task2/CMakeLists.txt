cmake_minimum_required(VERSION 2.8.3)
project(task2)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg visualization_msgs geometry_msgs)

## Declare ROS messages and services
add_message_files(FILES coords_2d.msg coords_2d_array.msg Num.msg)
add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(CATKIN_DEPENDS roscpp rospy std_msgs message_runtime)

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(talker1 src/talker1.cpp)
target_link_libraries(talker1 ${catkin_LIBRARIES})
add_dependencies(talker1 task2_generate_messages_cpp)

add_executable(listener1 src/listener1.cpp)
target_link_libraries(listener1 ${catkin_LIBRARIES})
add_dependencies(listener1 task2_generate_messages_cpp)



