#include "ros/ros.h"
#include "task2/coords_2d_array.h"
#include "visualization_msgs/MarkerArray.h"
#include "visualization_msgs/Marker.h"
#include <geometry_msgs/Point.h>


ros::Publisher marker_pub;

void pointsCallback(const task2::coords_2d_array::ConstPtr& msg) {
    visualization_msgs::MarkerArray marker_array;

    ROS_INFO("Received points array with %lu points", msg->points.size());
    for (const auto& point : msg->points) {
        ROS_INFO("Point: x=%f, y=%f", point.x, point.y);
    }

    for (size_t i = 0; i < msg->points.size(); ++i) {
        const auto& point = msg->points[i];
        visualization_msgs::Marker marker;
        marker.header.frame_id = "map";
        marker.header.stamp = ros::Time::now();
        marker.ns = "point";
        marker.id = i;
        marker.type = visualization_msgs::Marker::SPHERE;
        marker.action = visualization_msgs::Marker::ADD;
        marker.pose.position.x = point.x;
        marker.pose.position.y = point.y;
        marker.pose.position.z = 0;
        marker.pose.orientation.x = 0.0;
        marker.pose.orientation.y = 0.0;
        marker.pose.orientation.z = 0.0;
        marker.pose.orientation.w = 1.0;
        marker.scale.x = 1.0;
        marker.scale.y = 1.0;
        marker.scale.z = 1.0;
        marker.color.a = 1.0;
        marker.color.r = 1.0;
        marker.color.g = 1.0;
        marker.color.b = 1.0;
        geometry_msgs::Point point_msg;
        point_msg.x = point.x;
        point_msg.y = point.y;
        point_msg.z = 0; // Set z-coordinate to 0
        marker.points.push_back(point_msg);
        marker.lifetime = ros::Duration();
        marker_array.markers.push_back(marker);
    }

    ros::Rate loop_rate(1); 
    while (ros::ok()) {

        // You can perform other tasks here if needed
        ros::spinOnce();
        loop_rate.sleep();
        marker_pub.publish(marker_array);
        ROS_INFO("Published MarkerArray with %lu markers", marker_array.markers.size());
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "listener1");
    ros::NodeHandle nh;

    marker_pub = nh.advertise<visualization_msgs::MarkerArray>("visualization_marker_array", 1000);

    ros::Subscriber sub = nh.subscribe("coords_2d_array", 1000, pointsCallback);

    ros::spin();
    return 0;
}
