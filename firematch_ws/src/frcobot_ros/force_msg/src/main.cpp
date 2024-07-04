// #pragma once
#include <iostream>
#include "SerialPort.h"
#include <memory.h>
#include "msg_d.h"
#include <ros/ros.h>
#include "std_msgs/Float32MultiArray.h"
using namespace std;


int main(int argc, char** argv)
{
	//init data
	SerialPort port;
	SerialMsg msg_m;
	std_msgs::Float32MultiArray receivedFloat;
	receivedFloat.data.resize(6);
	static float floattmp[6];
	
	port.open("/dev/ttyUSB0", SerialPort::defaultOptions);	

	//check port
	if (port.isOpen())
	{
		cout << "port open success!" << endl;
	}
	else
	{
		cout << "port open failed!" << endl;
		return 0;
	}

	// 初始化ros节点
	ros::init(argc, argv, "force_msg_publisher");
	ros::NodeHandle n;
	ros::Publisher force_pub = n.advertise<std_msgs::Float32MultiArray>("/force_msg", 1);
	// ros::Rate loop_rate(10);

	port.openThread();	
	
	while(ros::ok()){	
		uint8_t temp[8] = REQ_FLOAT_MSG;	//read float
		port.write(temp, 8);
		usleep(100000);
		msg_m.GetMsg(floattmp);
		for (int i = 0 ; i <= 5; i++){
			receivedFloat.data[i] = floattmp[i];
			// cout << floattmp[i]<<endl;
		}	
		force_pub.publish(receivedFloat);
	}
	

	port.close();
	return 0;
}

