#include "ros/ros.h"
#include "task2/coords_2d.h"
#include "task2/coords_2d_array.h"
#include <sstream>
#include <iostream>
#include <vector>
#include <string>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "talker1");
    ros::NodeHandle nh;
    ros::Publisher points_pub = nh.advertise<task2::coords_2d_array>("coords_2d_array", 1000);

    // Variable to store the points
    task2::coords_2d_array points;

    // Read parameter from the parameter server
    XmlRpc::XmlRpcValue param_list;
    nh.getParam("/points", param_list);

    // Check if the parameter is an array
    if (param_list.getType() != XmlRpc::XmlRpcValue::TypeArray) {
        ROS_ERROR("Parameter '/points' is not an array");
        return 1;
    }
    
    // Iterate through the array and populate the points message
    for (int i = 0; i < param_list.size(); ++i) {
        // Check if the element is a struct
        task2::coords_2d point;
        if (param_list[i][0].getType() != XmlRpc::XmlRpcValue::TypeInt) {
            ROS_ERROR("Invalid element in parameter '/points'");
            return 1;
        } else {
            point.x = static_cast<int>(param_list[i][0]);
        }
        if (param_list[i][1].getType() != XmlRpc::XmlRpcValue::TypeInt) {
            ROS_ERROR("Invalid element in parameter '/points'");
            return 1;
        } else {
            point.y = static_cast<int>(param_list[i][1]);
            points.points.push_back(point);
        }
    }

    // Print the points
    std::cout << "Points: ";
    for (const auto& point : points.points) {
        std::cout << "[" << point.x << ", " << point.y << "] ";
    }
    std::cout << std::endl;

    

    // Rate at which to publish the messages
    ros::Rate loop_rate(1); 

    while (ros::ok()) {

        points_pub.publish(points);
        // You can perform other tasks here if needed
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
