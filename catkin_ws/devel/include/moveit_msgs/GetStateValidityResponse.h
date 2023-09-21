// Generated by gencpp from file moveit_msgs/GetStateValidityResponse.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITYRESPONSE_H
#define MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <moveit_msgs/ContactInformation.h>
#include <moveit_msgs/CostSource.h>
#include <moveit_msgs/ConstraintEvalResult.h>

namespace moveit_msgs
{
template <class ContainerAllocator>
struct GetStateValidityResponse_
{
  typedef GetStateValidityResponse_<ContainerAllocator> Type;

  GetStateValidityResponse_()
    : valid(false)
    , contacts()
    , cost_sources()
    , constraint_result()  {
    }
  GetStateValidityResponse_(const ContainerAllocator& _alloc)
    : valid(false)
    , contacts(_alloc)
    , cost_sources(_alloc)
    , constraint_result(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _valid_type;
  _valid_type valid;

   typedef std::vector< ::moveit_msgs::ContactInformation_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::moveit_msgs::ContactInformation_<ContainerAllocator> >> _contacts_type;
  _contacts_type contacts;

   typedef std::vector< ::moveit_msgs::CostSource_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::moveit_msgs::CostSource_<ContainerAllocator> >> _cost_sources_type;
  _cost_sources_type cost_sources;

   typedef std::vector< ::moveit_msgs::ConstraintEvalResult_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::moveit_msgs::ConstraintEvalResult_<ContainerAllocator> >> _constraint_result_type;
  _constraint_result_type constraint_result;





  typedef boost::shared_ptr< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetStateValidityResponse_

typedef ::moveit_msgs::GetStateValidityResponse_<std::allocator<void> > GetStateValidityResponse;

typedef boost::shared_ptr< ::moveit_msgs::GetStateValidityResponse > GetStateValidityResponsePtr;
typedef boost::shared_ptr< ::moveit_msgs::GetStateValidityResponse const> GetStateValidityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.valid == rhs.valid &&
    lhs.contacts == rhs.contacts &&
    lhs.cost_sources == rhs.cost_sources &&
    lhs.constraint_result == rhs.constraint_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e326fb22b7448f29c0e726d9270d9929";
  }

  static const char* value(const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe326fb22b7448f29ULL;
  static const uint64_t static_value2 = 0xc0e726d9270d9929ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/GetStateValidityResponse";
  }

  static const char* value(const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool valid\n"
"ContactInformation[] contacts\n"
"CostSource[] cost_sources\n"
"ConstraintEvalResult[] constraint_result\n"
"\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/ContactInformation\n"
"# Standard ROS header contains information \n"
"# about the frame in which this \n"
"# contact is specified\n"
"Header header\n"
"\n"
"# Position of the contact point\n"
"geometry_msgs/Point position\n"
"\n"
"# Normal corresponding to the contact point\n"
"geometry_msgs/Vector3 normal \n"
"\n"
"# Depth of contact point\n"
"float64 depth\n"
"\n"
"# Name of the first body that is in contact\n"
"# This could be a link or a namespace that represents a body\n"
"string contact_body_1\n"
"uint32 body_type_1\n"
"\n"
"# Name of the second body that is in contact\n"
"# This could be a link or a namespace that represents a body\n"
"string contact_body_2\n"
"uint32 body_type_2\n"
"\n"
"uint32 ROBOT_LINK=0\n"
"uint32 WORLD_OBJECT=1\n"
"uint32 ROBOT_ATTACHED=2\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: moveit_msgs/CostSource\n"
"# The density of the cost source\n"
"float64 cost_density\n"
"\n"
"# The volume of the cost source is represented as an\n"
"# axis-aligned bounding box (AABB)\n"
"# The AABB is specified by two of its opposite corners\n"
"\n"
"geometry_msgs/Vector3 aabb_min\n"
"\n"
"geometry_msgs/Vector3 aabb_max\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/ConstraintEvalResult\n"
"# This message contains result from constraint evaluation\n"
"# result specifies the result of constraint evaluation \n"
"# (true indicates state satisfies constraint, false indicates state violates constraint)\n"
"# if false, distance specifies a measure of the distance of the state from the constraint\n"
"# if true, distance is set to zero\n"
"bool result\n"
"float64 distance\n"
;
  }

  static const char* value(const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.valid);
      stream.next(m.contacts);
      stream.next(m.cost_sources);
      stream.next(m.constraint_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetStateValidityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::GetStateValidityResponse_<ContainerAllocator>& v)
  {
    s << indent << "valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.valid);
    s << indent << "contacts[]" << std::endl;
    for (size_t i = 0; i < v.contacts.size(); ++i)
    {
      s << indent << "  contacts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moveit_msgs::ContactInformation_<ContainerAllocator> >::stream(s, indent + "    ", v.contacts[i]);
    }
    s << indent << "cost_sources[]" << std::endl;
    for (size_t i = 0; i < v.cost_sources.size(); ++i)
    {
      s << indent << "  cost_sources[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moveit_msgs::CostSource_<ContainerAllocator> >::stream(s, indent + "    ", v.cost_sources[i]);
    }
    s << indent << "constraint_result[]" << std::endl;
    for (size_t i = 0; i < v.constraint_result.size(); ++i)
    {
      s << indent << "  constraint_result[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moveit_msgs::ConstraintEvalResult_<ContainerAllocator> >::stream(s, indent + "    ", v.constraint_result[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITYRESPONSE_H
