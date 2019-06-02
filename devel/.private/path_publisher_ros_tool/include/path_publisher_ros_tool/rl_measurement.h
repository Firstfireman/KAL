// Generated by gencpp from file path_publisher_ros_tool/rl_measurement.msg
// DO NOT EDIT!


#ifndef PATH_PUBLISHER_ROS_TOOL_MESSAGE_RL_MEASUREMENT_H
#define PATH_PUBLISHER_ROS_TOOL_MESSAGE_RL_MEASUREMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace path_publisher_ros_tool
{
template <class ContainerAllocator>
struct rl_measurement_
{
  typedef rl_measurement_<ContainerAllocator> Type;

  rl_measurement_()
    : path_image()
    , dis(0.0)
    , angle(0.0)
    , switcher(0)  {
    }
  rl_measurement_(const ContainerAllocator& _alloc)
    : path_image(_alloc)
    , dis(0.0)
    , angle(0.0)
    , switcher(0)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _path_image_type;
  _path_image_type path_image;

   typedef float _dis_type;
  _dis_type dis;

   typedef float _angle_type;
  _angle_type angle;

   typedef int8_t _switcher_type;
  _switcher_type switcher;





  typedef boost::shared_ptr< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> const> ConstPtr;

}; // struct rl_measurement_

typedef ::path_publisher_ros_tool::rl_measurement_<std::allocator<void> > rl_measurement;

typedef boost::shared_ptr< ::path_publisher_ros_tool::rl_measurement > rl_measurementPtr;
typedef boost::shared_ptr< ::path_publisher_ros_tool::rl_measurement const> rl_measurementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace path_publisher_ros_tool

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'path_publisher_ros_tool': ['/home/kal1-4/anicar_ws/src/path_publisher_ros_tool/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0e7d7db386b9b06d0acdb0486e461fb9";
  }

  static const char* value(const ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0e7d7db386b9b06dULL;
  static const uint64_t static_value2 = 0x0acdb0486e461fb9ULL;
};

template<class ContainerAllocator>
struct DataType< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "path_publisher_ros_tool/rl_measurement";
  }

  static const char* value(const ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image path_image\n\
float32 dis\n\
float32 angle\n\
int8 switcher\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of camera\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_image);
      stream.next(m.dis);
      stream.next(m.angle);
      stream.next(m.switcher);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rl_measurement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::path_publisher_ros_tool::rl_measurement_<ContainerAllocator>& v)
  {
    s << indent << "path_image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.path_image);
    s << indent << "dis: ";
    Printer<float>::stream(s, indent + "  ", v.dis);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "switcher: ";
    Printer<int8_t>::stream(s, indent + "  ", v.switcher);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PATH_PUBLISHER_ROS_TOOL_MESSAGE_RL_MEASUREMENT_H
