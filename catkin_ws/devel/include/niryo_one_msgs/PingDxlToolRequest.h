// Generated by gencpp from file niryo_one_msgs/PingDxlToolRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLREQUEST_H
#define NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLREQUEST_H


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
struct PingDxlToolRequest_
{
  typedef PingDxlToolRequest_<ContainerAllocator> Type;

  PingDxlToolRequest_()
    : id(0)
    , name()  {
    }
  PingDxlToolRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PingDxlToolRequest_

typedef ::niryo_one_msgs::PingDxlToolRequest_<std::allocator<void> > PingDxlToolRequest;

typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolRequest > PingDxlToolRequestPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::PingDxlToolRequest const> PingDxlToolRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "527516197432b3d63ada52e8e4abaa34";
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x527516197432b3d6ULL;
  static const uint64_t static_value2 = 0x3ada52e8e4abaa34ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/PingDxlToolRequest";
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"string name\n"
;
  }

  static const char* value(const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingDxlToolRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::PingDxlToolRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_PINGDXLTOOLREQUEST_H
