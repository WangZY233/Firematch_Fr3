// Generated by gencpp from file niryo_one_msgs/GetWorkspaceRobotPoses.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_GETWORKSPACEROBOTPOSES_H
#define NIRYO_ONE_MSGS_MESSAGE_GETWORKSPACEROBOTPOSES_H

#include <ros/service_traits.h>


#include <niryo_one_msgs/GetWorkspaceRobotPosesRequest.h>
#include <niryo_one_msgs/GetWorkspaceRobotPosesResponse.h>


namespace niryo_one_msgs
{

struct GetWorkspaceRobotPoses
{

typedef GetWorkspaceRobotPosesRequest Request;
typedef GetWorkspaceRobotPosesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetWorkspaceRobotPoses
} // namespace niryo_one_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPoses > {
  static const char* value()
  {
    return "280aaac02707bfb63e891c5f74a0b7c5";
  }

  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPoses&) { return value(); }
};

template<>
struct DataType< ::niryo_one_msgs::GetWorkspaceRobotPoses > {
  static const char* value()
  {
    return "niryo_one_msgs/GetWorkspaceRobotPoses";
  }

  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPoses&) { return value(); }
};


// service_traits::MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPosesRequest> should match
// service_traits::MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPoses >
template<>
struct MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPosesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPoses >::value();
  }
  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPosesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::niryo_one_msgs::GetWorkspaceRobotPosesRequest> should match
// service_traits::DataType< ::niryo_one_msgs::GetWorkspaceRobotPoses >
template<>
struct DataType< ::niryo_one_msgs::GetWorkspaceRobotPosesRequest>
{
  static const char* value()
  {
    return DataType< ::niryo_one_msgs::GetWorkspaceRobotPoses >::value();
  }
  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPosesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPosesResponse> should match
// service_traits::MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPoses >
template<>
struct MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPosesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::niryo_one_msgs::GetWorkspaceRobotPoses >::value();
  }
  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPosesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::niryo_one_msgs::GetWorkspaceRobotPosesResponse> should match
// service_traits::DataType< ::niryo_one_msgs::GetWorkspaceRobotPoses >
template<>
struct DataType< ::niryo_one_msgs::GetWorkspaceRobotPosesResponse>
{
  static const char* value()
  {
    return DataType< ::niryo_one_msgs::GetWorkspaceRobotPoses >::value();
  }
  static const char* value(const ::niryo_one_msgs::GetWorkspaceRobotPosesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_GETWORKSPACEROBOTPOSES_H
