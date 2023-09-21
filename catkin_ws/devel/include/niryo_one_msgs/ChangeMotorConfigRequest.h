// Generated by gencpp from file niryo_one_msgs/ChangeMotorConfigRequest.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_CHANGEMOTORCONFIGREQUEST_H
#define NIRYO_ONE_MSGS_MESSAGE_CHANGEMOTORCONFIGREQUEST_H


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
struct ChangeMotorConfigRequest_
{
  typedef ChangeMotorConfigRequest_<ContainerAllocator> Type;

  ChangeMotorConfigRequest_()
    : can_required_motor_id_list()
    , dxl_required_motor_id_list()  {
    }
  ChangeMotorConfigRequest_(const ContainerAllocator& _alloc)
    : can_required_motor_id_list(_alloc)
    , dxl_required_motor_id_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _can_required_motor_id_list_type;
  _can_required_motor_id_list_type can_required_motor_id_list;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _dxl_required_motor_id_list_type;
  _dxl_required_motor_id_list_type dxl_required_motor_id_list;





  typedef boost::shared_ptr< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeMotorConfigRequest_

typedef ::niryo_one_msgs::ChangeMotorConfigRequest_<std::allocator<void> > ChangeMotorConfigRequest;

typedef boost::shared_ptr< ::niryo_one_msgs::ChangeMotorConfigRequest > ChangeMotorConfigRequestPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::ChangeMotorConfigRequest const> ChangeMotorConfigRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator2> & rhs)
{
  return lhs.can_required_motor_id_list == rhs.can_required_motor_id_list &&
    lhs.dxl_required_motor_id_list == rhs.dxl_required_motor_id_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator1> & lhs, const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e2ce6fc69b92fe327fc570d69342705";
  }

  static const char* value(const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e2ce6fc69b92fe3ULL;
  static const uint64_t static_value2 = 0x27fc570d69342705ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/ChangeMotorConfigRequest";
  }

  static const char* value(const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] can_required_motor_id_list\n"
"int32[] dxl_required_motor_id_list\n"
;
  }

  static const char* value(const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.can_required_motor_id_list);
      stream.next(m.dxl_required_motor_id_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeMotorConfigRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::ChangeMotorConfigRequest_<ContainerAllocator>& v)
  {
    s << indent << "can_required_motor_id_list[]" << std::endl;
    for (size_t i = 0; i < v.can_required_motor_id_list.size(); ++i)
    {
      s << indent << "  can_required_motor_id_list[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.can_required_motor_id_list[i]);
    }
    s << indent << "dxl_required_motor_id_list[]" << std::endl;
    for (size_t i = 0; i < v.dxl_required_motor_id_list.size(); ++i)
    {
      s << indent << "  dxl_required_motor_id_list[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.dxl_required_motor_id_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_CHANGEMOTORCONFIGREQUEST_H
