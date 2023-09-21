// Generated by gencpp from file moveit_msgs/CartesianTrajectory.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_CARTESIANTRAJECTORY_H
#define MOVEIT_MSGS_MESSAGE_CARTESIANTRAJECTORY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <moveit_msgs/CartesianTrajectoryPoint.h>

namespace moveit_msgs
{
template <class ContainerAllocator>
struct CartesianTrajectory_
{
  typedef CartesianTrajectory_<ContainerAllocator> Type;

  CartesianTrajectory_()
    : header()
    , tracked_frame()
    , points()  {
    }
  CartesianTrajectory_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tracked_frame(_alloc)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _tracked_frame_type;
  _tracked_frame_type tracked_frame;

   typedef std::vector< ::moveit_msgs::CartesianTrajectoryPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::moveit_msgs::CartesianTrajectoryPoint_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct CartesianTrajectory_

typedef ::moveit_msgs::CartesianTrajectory_<std::allocator<void> > CartesianTrajectory;

typedef boost::shared_ptr< ::moveit_msgs::CartesianTrajectory > CartesianTrajectoryPtr;
typedef boost::shared_ptr< ::moveit_msgs::CartesianTrajectory const> CartesianTrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator1> & lhs, const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.tracked_frame == rhs.tracked_frame &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator1> & lhs, const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4886769850ce858fcceba546fd5c793b";
  }

  static const char* value(const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4886769850ce858fULL;
  static const uint64_t static_value2 = 0xcceba546fd5c793bULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/CartesianTrajectory";
  }

  static const char* value(const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes the trajectory of a tracked frame in task-space\n"
"Header header\n"
"\n"
"# The name of the Cartesian frame being tracked with respect to the base frame provided in header.frame_id\n"
"string tracked_frame\n"
"\n"
"CartesianTrajectoryPoint[] points\n"
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
"MSG: moveit_msgs/CartesianTrajectoryPoint\n"
"# The definition of a cartesian point in a trajectory. Defines the cartesian state of the point and it's time,\n"
"# following the pattern of the JointTrajectory message\n"
"CartesianPoint point\n"
"\n"
"duration time_from_start\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/CartesianPoint\n"
"# This message defines a point in a cartesian trajectory\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Twist velocity\n"
"geometry_msgs/Accel acceleration\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
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
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tracked_frame);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CartesianTrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::CartesianTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::CartesianTrajectory_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tracked_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.tracked_frame);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moveit_msgs::CartesianTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_CARTESIANTRAJECTORY_H
