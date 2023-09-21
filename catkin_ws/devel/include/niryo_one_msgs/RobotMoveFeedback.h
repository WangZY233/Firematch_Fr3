// Generated by gencpp from file niryo_one_msgs/RobotMoveFeedback.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_ROBOTMOVEFEEDBACK_H
#define NIRYO_ONE_MSGS_MESSAGE_ROBOTMOVEFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_one_msgs/RobotState.h>

namespace niryo_one_msgs
{
template <class ContainerAllocator>
struct RobotMoveFeedback_
{
  typedef RobotMoveFeedback_<ContainerAllocator> Type;

  RobotMoveFeedback_()
    : state()  {
    }
  RobotMoveFeedback_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::niryo_one_msgs::RobotState_<ContainerAllocator>  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RobotMoveFeedback_

typedef ::niryo_one_msgs::RobotMoveFeedback_<std::allocator<void> > RobotMoveFeedback;

typedef boost::shared_ptr< ::niryo_one_msgs::RobotMoveFeedback > RobotMoveFeedbackPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::RobotMoveFeedback const> RobotMoveFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f0af3f1ad9e0dc3ec29de7b7426b5abe";
  }

  static const char* value(const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf0af3f1ad9e0dc3eULL;
  static const uint64_t static_value2 = 0xc29de7b7426b5abeULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/RobotMoveFeedback";
  }

  static const char* value(const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# feedback\n"
"niryo_one_msgs/RobotState state\n"
"\n"
"\n"
"================================================================================\n"
"MSG: niryo_one_msgs/RobotState\n"
"\n"
"geometry_msgs/Point position\n"
"niryo_one_msgs/RPY rpy\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: niryo_one_msgs/RPY\n"
"# roll, pitch and yaw\n"
"\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
;
  }

  static const char* value(const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotMoveFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::RobotMoveFeedback_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    s << std::endl;
    Printer< ::niryo_one_msgs::RobotState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_ROBOTMOVEFEEDBACK_H
