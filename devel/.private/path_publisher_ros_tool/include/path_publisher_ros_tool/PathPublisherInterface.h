// *********************************************************
//
// File autogenerated for the path_publisher_ros_tool package
// by the rosinterface_handler package.
// Please do not edit.
//
// ********************************************************/

#pragma once

#include <stdlib.h>
#include <string>
#include <limits>
#include <memory>
#include <ros/param.h>
#include <ros/node_handle.h>
#include <rosinterface_handler/utilities.hpp>
#ifdef MESSAGE_FILTERS_FOUND
#include <message_filters/subscriber.h>
#include <nav_msgs/Path.h>
#else
#error message_filters was not found during compilation. Please recompile with message_filters.
#endif
#ifdef DYNAMIC_RECONFIGURE_FOUND
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wparentheses"
#include <path_publisher_ros_tool/PathPublisherConfig.h>
#pragma GCC diagnostic pop
#else
struct PathPublisherConfig{};
#endif


namespace path_publisher_ros_tool {

/// \brief Parameter struct generated by rosinterface_handler
struct PathPublisherInterface {

  using Config = PathPublisherConfig;
#ifdef MESSAGE_FILTERS_FOUND
  template<typename T>
  using Subscriber = message_filters::Subscriber<T>;
  template<typename T>
  using SubscriberPtr = std::shared_ptr<Subscriber<T>>;
#endif
#ifdef IF_HANDLER_DIAGNOSTICS_INCLUDED
  template<typename T>
  using DiagSubscriber = rosinterface_handler::DiagnosedSubscriber<T>;
  template<typename T>
  using DiagSubscriberPtr = std::shared_ptr<DiagSubscriber<T>>;
  template<typename T>
  using DiagPublisher = rosinterface_handler::DiagnosedPublisher<T>;
#endif

  PathPublisherInterface(const ros::NodeHandle& private_node_handle)
  : globalNamespace_{"/"},
    publicNamespace_{rosinterface_handler::getParentNamespace(private_node_handle) + "/"},
    privateNamespace_{private_node_handle.getNamespace() + "/"},
    nodeName_{rosinterface_handler::getNodeName(private_node_handle)},
    privateNodeHandle_{private_node_handle} {}

  /// \brief Get values from parameter server
  ///
  /// Will fail if a value can not be found and no default value is given.
  void fromParamServer(){
    bool success = true;
    success &= rosinterface_handler::getParam(privateNamespace_ + "verbosity", verbosity, std::string{"info"});
    rosinterface_handler::setLoggerLevel(privateNodeHandle_, "verbosity");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_debug");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_info");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_warning");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_error");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_fatal");
    success &= rosinterface_handler::getParam(privateNamespace_ + "timer_rate", timer_rate, double{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "kos_shift", kos_shift, double{-0.2});
    success &= rosinterface_handler::getParam(privateNamespace_ + "delta_sigma", delta_sigma, double{0.01});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_to_map", path_to_map, std::string{""});
    success &= rosinterface_handler::getParam(privateNamespace_ + "mode", mode);
    success &= rosinterface_handler::getParam(privateNamespace_ + "env", env);
    success &= rosinterface_handler::getParam(privateNamespace_ + "just_straightway", just_straightway, bool{true});
    success &= rosinterface_handler::getParam(privateNamespace_ + "rendering", rendering, bool{false});
    success &= rosinterface_handler::getParam(privateNamespace_ + "map_name", map_name, std::string{""});
    success &= rosinterface_handler::getParam(privateNamespace_ + "reset_episode_service_name", reset_episode_service_name, std::string{"/reset_episode"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "frame_id_map", frame_id_map, std::string{"map"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "frame_id_vehicle", frame_id_vehicle, std::string{"vehicle"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "center_x", center_x, double{0.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "center_y", center_y, double{0.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_length", path_length, double{6.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "drive_distance", drive_distance, double{1.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "point_distance", point_distance, double{0.02});
    success &= rosinterface_handler::getParam(privateNamespace_ + "radius_noise", radius_noise, double{0.2});
    success &= rosinterface_handler::getParam(privateNamespace_ + "rotation_noise", rotation_noise, double{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "shift_noise", shift_noise, double{0.5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "local_scope", local_scope, double{2});
    success &= rosinterface_handler::getParam(privateNamespace_ + "least_points", least_points, int{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "stuck_time", stuck_time, double{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "BB_left_bottom_x", BB_left_bottom_x, double{0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "BB_left_bottom_y", BB_left_bottom_y, double{0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "BB_top_right_x", BB_top_right_x, double{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "BB_top_right_y", BB_top_right_y, double{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "road_length", road_length, double{10});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_publisher_topic", path_publisher_topic, std::string{"/path"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_publisher_queue_size", path_publisher_queue_size, int{5});

    path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, path_publisher_topic), path_publisher_queue_size);

    rosinterface_handler::testMin<double>(privateNamespace_ + "timer_rate", timer_rate, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "timer_rate", timer_rate, 10);
    rosinterface_handler::testMin<double>(privateNamespace_ + "kos_shift", kos_shift, -0.5);
    rosinterface_handler::testMax<double>(privateNamespace_ + "kos_shift", kos_shift, 0.5);
    rosinterface_handler::testMin<double>(privateNamespace_ + "delta_sigma", delta_sigma, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "delta_sigma", delta_sigma, 0.1);
    rosinterface_handler::testMin<double>(privateNamespace_ + "center_x", center_x, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "center_x", center_x, 15);
    rosinterface_handler::testMin<double>(privateNamespace_ + "center_y", center_y, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "center_y", center_y, 15);
    rosinterface_handler::testMin<double>(privateNamespace_ + "path_length", path_length, 1);
    rosinterface_handler::testMax<double>(privateNamespace_ + "path_length", path_length, 10);
    rosinterface_handler::testMin<double>(privateNamespace_ + "drive_distance", drive_distance, 0.1);
    rosinterface_handler::testMax<double>(privateNamespace_ + "drive_distance", drive_distance, 3);
    rosinterface_handler::testMin<double>(privateNamespace_ + "point_distance", point_distance, 0.005);
    rosinterface_handler::testMax<double>(privateNamespace_ + "point_distance", point_distance, 0.5);
    rosinterface_handler::testMin<double>(privateNamespace_ + "radius_noise", radius_noise, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "radius_noise", radius_noise, 0.5);
    rosinterface_handler::testMin<double>(privateNamespace_ + "rotation_noise", rotation_noise, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "rotation_noise", rotation_noise, 20);
    rosinterface_handler::testMin<double>(privateNamespace_ + "shift_noise", shift_noise, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "shift_noise", shift_noise, 1);
    rosinterface_handler::testMin<double>(privateNamespace_ + "local_scope", local_scope, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "local_scope", local_scope, 50);
    rosinterface_handler::testMin<int>(privateNamespace_ + "least_points", least_points, 0);
    rosinterface_handler::testMax<int>(privateNamespace_ + "least_points", least_points, 500);
    rosinterface_handler::testMin<double>(privateNamespace_ + "stuck_time", stuck_time, 0);
    rosinterface_handler::testMax<double>(privateNamespace_ + "stuck_time", stuck_time, 20);
    rosinterface_handler::testMin<int>(privateNamespace_ + "path_publisher_queue_size", path_publisher_queue_size, 0);
    if(!success){
      missingParamsWarning();
      rosinterface_handler::exit("RosinterfaceHandler: GetParam could net retrieve parameter.");
    }
    ROS_DEBUG_STREAM(*this);
  }

  /// \brief Set parameters on ROS parameter server.
  void toParamServer(){
    rosinterface_handler::setParam(privateNamespace_ + "verbosity",verbosity);
    rosinterface_handler::setParam(privateNamespace_ + "timer_rate",timer_rate);
    rosinterface_handler::setParam(privateNamespace_ + "kos_shift",kos_shift);
    rosinterface_handler::setParam(privateNamespace_ + "delta_sigma",delta_sigma);
    rosinterface_handler::setParam(privateNamespace_ + "path_to_map",path_to_map);
    rosinterface_handler::setParam(privateNamespace_ + "mode",mode);
    rosinterface_handler::setParam(privateNamespace_ + "env",env);
    rosinterface_handler::setParam(privateNamespace_ + "just_straightway",just_straightway);
    rosinterface_handler::setParam(privateNamespace_ + "rendering",rendering);
    rosinterface_handler::setParam(privateNamespace_ + "map_name",map_name);
    rosinterface_handler::setParam(privateNamespace_ + "reset_episode_service_name",reset_episode_service_name);
    rosinterface_handler::setParam(privateNamespace_ + "frame_id_map",frame_id_map);
    rosinterface_handler::setParam(privateNamespace_ + "frame_id_vehicle",frame_id_vehicle);
    rosinterface_handler::setParam(privateNamespace_ + "center_x",center_x);
    rosinterface_handler::setParam(privateNamespace_ + "center_y",center_y);
    rosinterface_handler::setParam(privateNamespace_ + "path_length",path_length);
    rosinterface_handler::setParam(privateNamespace_ + "drive_distance",drive_distance);
    rosinterface_handler::setParam(privateNamespace_ + "point_distance",point_distance);
    rosinterface_handler::setParam(privateNamespace_ + "radius_noise",radius_noise);
    rosinterface_handler::setParam(privateNamespace_ + "rotation_noise",rotation_noise);
    rosinterface_handler::setParam(privateNamespace_ + "shift_noise",shift_noise);
    rosinterface_handler::setParam(privateNamespace_ + "local_scope",local_scope);
    rosinterface_handler::setParam(privateNamespace_ + "least_points",least_points);
    rosinterface_handler::setParam(privateNamespace_ + "stuck_time",stuck_time);
    rosinterface_handler::setParam(privateNamespace_ + "BB_left_bottom_x",BB_left_bottom_x);
    rosinterface_handler::setParam(privateNamespace_ + "BB_left_bottom_y",BB_left_bottom_y);
    rosinterface_handler::setParam(privateNamespace_ + "BB_top_right_x",BB_top_right_x);
    rosinterface_handler::setParam(privateNamespace_ + "BB_top_right_y",BB_top_right_y);
    rosinterface_handler::setParam(privateNamespace_ + "road_length",road_length);
    rosinterface_handler::setParam(privateNamespace_ + "path_publisher_topic",path_publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "path_publisher_queue_size",path_publisher_queue_size);
  }

  /// \brief Update configurable parameters.
  ///
  /// \param config  dynamic reconfigure struct
  /// \level ?
  void fromConfig(const Config& config, const uint32_t level = 0){
#ifdef DYNAMIC_RECONFIGURE_FOUND
    if(path_publisher_topic != config.path_publisher_topic || path_publisher_queue_size != config.path_publisher_queue_size) {
      path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, config.path_publisher_topic), config.path_publisher_queue_size);
    }
    if(config.verbosity != this->verbosity) {
        rosinterface_handler::setParam(privateNamespace_ + "verbosity", config.verbosity);
        rosinterface_handler::setLoggerLevel(privateNodeHandle_, "verbosity");
    }
    verbosity = config.verbosity;
    timer_rate = config.timer_rate;
    kos_shift = config.kos_shift;
    delta_sigma = config.delta_sigma;
    center_x = config.center_x;
    center_y = config.center_y;
    path_length = config.path_length;
    drive_distance = config.drive_distance;
    point_distance = config.point_distance;
    radius_noise = config.radius_noise;
    rotation_noise = config.rotation_noise;
    shift_noise = config.shift_noise;
    local_scope = config.local_scope;
    least_points = config.least_points;
    stuck_time = config.stuck_time;
    BB_left_bottom_x = config.BB_left_bottom_x;
    BB_left_bottom_y = config.BB_left_bottom_y;
    BB_top_right_x = config.BB_top_right_x;
    BB_top_right_y = config.BB_top_right_y;
    road_length = config.road_length;
    path_publisher_topic = config.path_publisher_topic;
    path_publisher_queue_size = config.path_publisher_queue_size;
#else
  ROS_FATAL_STREAM("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
  rosinterface_handler::exit("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
#endif
  }

  /// \brief Stream operator for printing parameter struct
  friend std::ostream& operator<<(std::ostream& os, const PathPublisherInterface& p)
  {
    os << "[" << p.nodeName_ << "]\nNode " << p.nodeName_ << " has the following parameters:\n"
      << "	" << p.privateNamespace_ << "verbosity:" << p.verbosity << "\n"
      << "	" << p.privateNamespace_ << "verbosity_debug:" << p.verbosity_debug << "\n"
      << "	" << p.privateNamespace_ << "verbosity_info:" << p.verbosity_info << "\n"
      << "	" << p.privateNamespace_ << "verbosity_warning:" << p.verbosity_warning << "\n"
      << "	" << p.privateNamespace_ << "verbosity_error:" << p.verbosity_error << "\n"
      << "	" << p.privateNamespace_ << "verbosity_fatal:" << p.verbosity_fatal << "\n"
      << "	" << p.privateNamespace_ << "timer_rate:" << p.timer_rate << "\n"
      << "	" << p.privateNamespace_ << "kos_shift:" << p.kos_shift << "\n"
      << "	" << p.privateNamespace_ << "delta_sigma:" << p.delta_sigma << "\n"
      << "	" << p.privateNamespace_ << "path_to_map:" << p.path_to_map << "\n"
      << "	" << p.privateNamespace_ << "mode:" << p.mode << "\n"
      << "	" << p.privateNamespace_ << "env:" << p.env << "\n"
      << "	" << p.privateNamespace_ << "just_straightway:" << p.just_straightway << "\n"
      << "	" << p.privateNamespace_ << "rendering:" << p.rendering << "\n"
      << "	" << p.privateNamespace_ << "map_name:" << p.map_name << "\n"
      << "	" << p.privateNamespace_ << "reset_episode_service_name:" << p.reset_episode_service_name << "\n"
      << "	" << p.privateNamespace_ << "frame_id_map:" << p.frame_id_map << "\n"
      << "	" << p.privateNamespace_ << "frame_id_vehicle:" << p.frame_id_vehicle << "\n"
      << "	" << p.privateNamespace_ << "center_x:" << p.center_x << "\n"
      << "	" << p.privateNamespace_ << "center_y:" << p.center_y << "\n"
      << "	" << p.privateNamespace_ << "path_length:" << p.path_length << "\n"
      << "	" << p.privateNamespace_ << "drive_distance:" << p.drive_distance << "\n"
      << "	" << p.privateNamespace_ << "point_distance:" << p.point_distance << "\n"
      << "	" << p.privateNamespace_ << "radius_noise:" << p.radius_noise << "\n"
      << "	" << p.privateNamespace_ << "rotation_noise:" << p.rotation_noise << "\n"
      << "	" << p.privateNamespace_ << "shift_noise:" << p.shift_noise << "\n"
      << "	" << p.privateNamespace_ << "local_scope:" << p.local_scope << "\n"
      << "	" << p.privateNamespace_ << "least_points:" << p.least_points << "\n"
      << "	" << p.privateNamespace_ << "stuck_time:" << p.stuck_time << "\n"
      << "	" << p.privateNamespace_ << "BB_left_bottom_x:" << p.BB_left_bottom_x << "\n"
      << "	" << p.privateNamespace_ << "BB_left_bottom_y:" << p.BB_left_bottom_y << "\n"
      << "	" << p.privateNamespace_ << "BB_top_right_x:" << p.BB_top_right_x << "\n"
      << "	" << p.privateNamespace_ << "BB_top_right_y:" << p.BB_top_right_y << "\n"
      << "	" << p.privateNamespace_ << "road_length:" << p.road_length << "\n"
      << "	" << p.privateNamespace_ << "path_publisher_topic:" << p.path_publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "path_publisher_queue_size:" << p.path_publisher_queue_size << "\n"
;
    return os;
  }

  /// \brief get the node handle that the interface struct uses internally
  ros::NodeHandle getPrivateNodeHandle() {
      return privateNodeHandle_;
  }

  /// \brief returns the name of the node (works in nodelets, too)
  const std::string& nodeName() {
      return nodeName_;
  }
private:
  const std::string globalNamespace_;
  const std::string publicNamespace_;
  const std::string privateNamespace_;
  const std::string nodeName_;
  ros::NodeHandle privateNodeHandle_;

public:
  std::string verbosity; /*!< Sets the verbosity for this node */
  static constexpr auto verbosity_debug = "debug"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_info = "info"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_warning = "warning"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_error = "error"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_fatal = "fatal"; /*!< Constant for enum verbosity */
  double timer_rate; /*!< publisher frequency */
  double kos_shift; /*!< distance from vehicle frame id referred position to real vehicle center point */
  double delta_sigma; /*!< delta angle to generate sample path */
  std::string path_to_map; /*!< directory to map file */
  std::string mode; /*!< mode of path publisher, train or test */
  std::string env; /*!< run on anicar or simulator */
  bool just_straightway; /*!< just publish straight path */
  bool rendering; /*!< show path image or not */
  std::string map_name; /*!< file name of map */
  std::string reset_episode_service_name; /*!< name of service */
  std::string frame_id_map; /*!< Map frame ID */
  std::string frame_id_vehicle; /*!< Vehicle frame ID */
  double center_x; /*!< x axis value of center point of map */
  double center_y; /*!< y axis value of center point of map */
  double path_length; /*!< length of a published path */
  double drive_distance; /*!< drive distance before update path */
  double point_distance; /*!< distance between two points */
  double radius_noise; /*!< standard deviation of noise to radius when generate sample map */
  double rotation_noise; /*!< standard deviation of noise to rotation when process sample map */
  double shift_noise; /*!< standard deviation of noise to lateral shift base on anicar scale */
  double local_scope; /*!< real world width and height of local area */
  int least_points; /*!< least points in image area */
  double stuck_time; /*!< max limited time the vehicle allowed to path through the path */
  double BB_left_bottom_x; /*!< position of left bottom corner of boundary */
  double BB_left_bottom_y; /*!< position of left bottom corner of boundary */
  double BB_top_right_x; /*!< position of top right corner of boundary */
  double BB_top_right_y; /*!< position of top right corner of boundary */
  double road_length; /*!< the length of sampling path in train mode when sampling path from osm file */
  std::string path_publisher_topic; /*!< Topic for path publisher */
  int path_publisher_queue_size; /*!< Queue size for path publisher */
  ros::Publisher path_publisher; /*!< path publisher */


private:
  /// \brief Issue a warning about missing default parameters.
  void missingParamsWarning(){
    ROS_WARN_STREAM("[" << nodeName_ << "]\nThe following parameters do not have default values and need to be specified:\n"
      << "	" << privateNamespace_ << "mode" << " (std::string) \n"
      << "	" << privateNamespace_ << "env" << " (std::string) \n"
    );
  }
};

} // namespace path_publisher_ros_tool
