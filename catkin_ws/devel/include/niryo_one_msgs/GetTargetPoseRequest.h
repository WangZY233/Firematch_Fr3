// Generated by gencpp from file niryo_one_msgs/GetTargetPoseRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_GETTARGETPOSEREQUEST_H
#define NIRYO_ONE_MSGS_MESSAGE_GETTARGETPOSEREQUEST_H


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
struct GetTargetPoseRequest_
{
  typedef GetTargetPoseRequest_<ContainerAllocator> Type;

  GetTargetPoseRequest_()
    : workspace()
    , grip()
    , tool_id(0)
    , height_offset(0.0)
    , x_rel(0.0)
    , y_rel(0.0)
    , yaw_rel(0.0)  {
    }
  GetTargetPoseRequest_(const ContainerAllocator& _alloc)
    : workspace(_alloc)
    , grip(_alloc)
    , tool_id(0)
    , height_offset(0.0)
    , x_rel(0.0)
    , y_rel(0.0)
    , yaw_rel(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _workspace_type;
  _workspace_type workspace;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _grip_type;
  _grip_type grip;

   typedef int32_t _tool_id_type;
  _tool_id_type tool_id;

   typedef float _height_offset_type;
  _height_offset_type height_offset;

   typedef float _x_rel_type;
  _x_rel_type x_rel;

   typedef float _y_rel_type;
  _y_rel_type y_rel;

   typedef float _yaw_rel_type;
  _yaw_rel_type yaw_rel;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(GRIP_AUTO)
  #undef GRIP_AUTO
#endif


  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> GRIP_AUTO;

  typedef boost::shared_ptr< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetTargetPoseRequest_

typedef ::niryo_one_msgs::GetTargetPoseRequest_<std::allocator<void> > GetTargetPoseRequest;

typedef boost::shared_ptr< ::niryo_one_msgs::GetTargetPoseRequest > GetTargetPoseRequestPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::GetTargetPoseRequest const> GetTargetPoseRequestConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      GetTargetPoseRequest_<ContainerAllocator>::GRIP_AUTO =
        
          "auto"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.workspace == rhs.workspace &&
    lhs.grip == rhs.grip &&
    lhs.tool_id == rhs.tool_id &&
    lhs.height_offset == rhs.height_offset &&
    lhs.x_rel == rhs.x_rel &&
    lhs.y_rel == rhs.y_rel &&
    lhs.yaw_rel == rhs.yaw_rel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "102311ad973ac34de88eb133d488960a";
  }

  static const char* value(const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x102311ad973ac34dULL;
  static const uint64_t static_value2 = 0xe88eb133d488960aULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/GetTargetPoseRequest";
  }

  static const char* value(const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string GRIP_AUTO = auto\n"
"\n"
"string workspace\n"
"string grip\n"
"int32 tool_id           # Used if grip_name = GRIP_AUTO\n"
"float32 height_offset\n"
"float32 x_rel\n"
"float32 y_rel\n"
"float32 yaw_rel\n"
;
  }

  static const char* value(const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.workspace);
      stream.next(m.grip);
      stream.next(m.tool_id);
      stream.next(m.height_offset);
      stream.next(m.x_rel);
      stream.next(m.y_rel);
      stream.next(m.yaw_rel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTargetPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::GetTargetPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "workspace: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.workspace);
    s << indent << "grip: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.grip);
    s << indent << "tool_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.tool_id);
    s << indent << "height_offset: ";
    Printer<float>::stream(s, indent + "  ", v.height_offset);
    s << indent << "x_rel: ";
    Printer<float>::stream(s, indent + "  ", v.x_rel);
    s << indent << "y_rel: ";
    Printer<float>::stream(s, indent + "  ", v.y_rel);
    s << indent << "yaw_rel: ";
    Printer<float>::stream(s, indent + "  ", v.yaw_rel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_GETTARGETPOSEREQUEST_H