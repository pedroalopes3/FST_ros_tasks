#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <iostream>  

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
  ros::Rate loop_rate(10);

  int count = 0;

  int user_input;
  


  if (std::cin.fail()) {
    std::cerr << "Invalid " << std::endl;
    return 1; 
  }

  while (ros::ok())
  {
    std::cout << "Enter a number: ";
    std::cin >> user_input;
    std_msgs::String msg;
    std::stringstream ss;
    ss << "Your number is: " << user_input;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());

    chatter_pub.publish(msg);

    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }

  return 0;
}
