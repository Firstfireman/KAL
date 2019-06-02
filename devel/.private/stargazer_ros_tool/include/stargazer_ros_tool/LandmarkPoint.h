// Generated by gencpp from file stargazer_ros_tool/LandmarkPoint.msg
// DO NOT EDIT!


#ifndef STARGAZER_ROS_TOOL_MESSAGE_LANDMARKPOINT_H
#define STARGAZER_ROS_TOOL_MESSAGE_LANDMARKPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace stargazer_ros_tool
{
template <class ContainerAllocator>
struct LandmarkPoint_
{
  typedef LandmarkPoint_<ContainerAllocator> Type;

  LandmarkPoint_()
    : row(0)
    , col(0)
    , u(0)
    , v(0)  {
    }
  LandmarkPoint_(const ContainerAllocator& _alloc)
    : row(0)
    , col(0)
    , u(0)
    , v(0)  {
  (void)_alloc;
    }



   typedef uint8_t _row_type;
  _row_type row;

   typedef uint8_t _col_type;
  _col_type col;

   typedef uint16_t _u_type;
  _u_type u;

   typedef uint16_t _v_type;
  _v_type v;





  typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> const> ConstPtr;

}; // struct LandmarkPoint_

typedef ::stargazer_ros_tool::LandmarkPoint_<std::allocator<void> > LandmarkPoint;

typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkPoint > LandmarkPointPtr;
typedef boost::shared_ptr< ::stargazer_ros_tool::LandmarkPoint const> LandmarkPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace stargazer_ros_tool

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'stargazer_ros_tool': ['/home/kal1-4/anicar_ws/src/stargazer_ros_tool/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "40b0802ec1ab1d1b341c706f76acdd9a";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x40b0802ec1ab1d1bULL;
  static const uint64_t static_value2 = 0x341c706f76acdd9aULL;
};

template<class ContainerAllocator>
struct DataType< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stargazer_ros_tool/LandmarkPoint";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 row\n\
uint8 col\n\
\n\
uint16 u\n\
uint16 v\n\
";
  }

  static const char* value(const ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.row);
      stream.next(m.col);
      stream.next(m.u);
      stream.next(m.v);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LandmarkPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stargazer_ros_tool::LandmarkPoint_<ContainerAllocator>& v)
  {
    s << indent << "row: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.row);
    s << indent << "col: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.col);
    s << indent << "u: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.u);
    s << indent << "v: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.v);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARGAZER_ROS_TOOL_MESSAGE_LANDMARKPOINT_H
