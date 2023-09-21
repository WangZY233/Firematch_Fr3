// Generated by gencpp from file niryo_one_msgs/PingDxlToolResponse.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLRESPONSE_H
#define NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_one_msgs
{
template <class ContainerAllocator>
struct PingDxlToolResponse_
{
  typedef PingDxlToolResponse_<ContainerAllocator> Type;

  PingDxlToolResponse_()
    : state(0)  {
    }
  PingDxlToolResponse_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PingDxlToolResponse_

typedef ::niryo_one_msgs::PingDxlToolResponse_<std::allocator<void> > PingDxlToolResponse;

typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolResponse > PingDxlToolResponsePtr;
typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolResponse const> PingDxlToolResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "800f34bc468def1d86e2d42bea5648c0";
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x800f34bc468def1dULL;
  static const uint64_t static_value2 = 0x86e2d42bea5648c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/PingDxlToolResponse";
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 state\n"
"\n"
;
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingDxlToolResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::PingDxlToolResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLRESPONSE_H
