// *********************************************************
//
// File autogenerated for the image_preproc_ros_tool package
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
#include <sensor_msgs/Image.h>
#else
#error message_filters was not found during compilation. Please recompile with message_filters.
#endif
#ifdef DYNAMIC_RECONFIGURE_FOUND
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wparentheses"
#include <image_preproc_ros_tool/LabelDilationConfig.h>
#pragma GCC diagnostic pop
#else
struct LabelDilationConfig{};
#endif


namespace image_preproc_ros_tool {

/// \brief Parameter struct generated by rosinterface_handler
struct LabelDilationInterface {

  using Config = LabelDilationConfig;
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

  LabelDilationInterface(const ros::NodeHandle& private_node_handle)
  : globalNamespace_{"/"},
    publicNamespace_{rosinterface_handler::getParentNamespace(private_node_handle) + "/"},
    privateNamespace_{private_node_handle.getNamespace() + "/"},
    nodeName_{rosinterface_handler::getNodeName(private_node_handle)},
    privateNodeHandle_{private_node_handle},
    subscriber{std::make_shared<Subscriber<sensor_msgs::Image>>()} {}

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
    success &= rosinterface_handler::getParam(privateNamespace_ + "erode", erode, bool{false});
    success &= rosinterface_handler::getParam(privateNamespace_ + "half_kernel_size", half_kernel_size, int{3});
    success &= rosinterface_handler::getParam(privateNamespace_ + "subscriber_topic", subscriber_topic, std::string{"in_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "subscriber_queue_size", subscriber_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "publisher_topic", publisher_topic, std::string{"out_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "publisher_queue_size", publisher_queue_size, int{5});

    subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, subscriber_topic), uint32_t(subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    publisher = privateNodeHandle_.advertise<sensor_msgs::Image>(rosinterface_handler::getTopic(privateNamespace_, publisher_topic), publisher_queue_size);

    rosinterface_handler::testMin<int>(privateNamespace_ + "half_kernel_size", half_kernel_size, 0);
    rosinterface_handler::testMax<int>(privateNamespace_ + "half_kernel_size", half_kernel_size, 20);
    rosinterface_handler::testMin<int>(privateNamespace_ + "subscriber_queue_size", subscriber_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "publisher_queue_size", publisher_queue_size, 0);
    if(!success){
      missingParamsWarning();
      rosinterface_handler::exit("RosinterfaceHandler: GetParam could net retrieve parameter.");
    }
    ROS_DEBUG_STREAM(*this);
  }

  /// \brief Set parameters on ROS parameter server.
  void toParamServer(){
    rosinterface_handler::setParam(privateNamespace_ + "verbosity",verbosity);
    rosinterface_handler::setParam(privateNamespace_ + "erode",erode);
    rosinterface_handler::setParam(privateNamespace_ + "half_kernel_size",half_kernel_size);
    rosinterface_handler::setParam(privateNamespace_ + "subscriber_topic",subscriber_topic);
    rosinterface_handler::setParam(privateNamespace_ + "subscriber_queue_size",subscriber_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "publisher_topic",publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "publisher_queue_size",publisher_queue_size);
  }

  /// \brief Update configurable parameters.
  ///
  /// \param config  dynamic reconfigure struct
  /// \level ?
  void fromConfig(const Config& config, const uint32_t level = 0){
#ifdef DYNAMIC_RECONFIGURE_FOUND
    if(subscriber_topic != config.subscriber_topic || subscriber_queue_size != config.subscriber_queue_size) {
      subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, config.subscriber_topic), uint32_t(config.subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    }
    if(publisher_topic != config.publisher_topic || publisher_queue_size != config.publisher_queue_size) {
      publisher = privateNodeHandle_.advertise<sensor_msgs::Image>(rosinterface_handler::getTopic(privateNamespace_, config.publisher_topic), config.publisher_queue_size);
    }
    if(config.verbosity != this->verbosity) {
        rosinterface_handler::setParam(privateNamespace_ + "verbosity", config.verbosity);
        rosinterface_handler::setLoggerLevel(privateNodeHandle_, "verbosity");
    }
    verbosity = config.verbosity;
    erode = config.erode;
    half_kernel_size = config.half_kernel_size;
    subscriber_topic = config.subscriber_topic;
    subscriber_queue_size = config.subscriber_queue_size;
    publisher_topic = config.publisher_topic;
    publisher_queue_size = config.publisher_queue_size;
#else
  ROS_FATAL_STREAM("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
  rosinterface_handler::exit("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
#endif
  }

  /// \brief Stream operator for printing parameter struct
  friend std::ostream& operator<<(std::ostream& os, const LabelDilationInterface& p)
  {
    os << "[" << p.nodeName_ << "]\nNode " << p.nodeName_ << " has the following parameters:\n"
      << "	" << p.privateNamespace_ << "verbosity:" << p.verbosity << "\n"
      << "	" << p.privateNamespace_ << "verbosity_debug:" << p.verbosity_debug << "\n"
      << "	" << p.privateNamespace_ << "verbosity_info:" << p.verbosity_info << "\n"
      << "	" << p.privateNamespace_ << "verbosity_warning:" << p.verbosity_warning << "\n"
      << "	" << p.privateNamespace_ << "verbosity_error:" << p.verbosity_error << "\n"
      << "	" << p.privateNamespace_ << "verbosity_fatal:" << p.verbosity_fatal << "\n"
      << "	" << p.privateNamespace_ << "erode:" << p.erode << "\n"
      << "	" << p.privateNamespace_ << "half_kernel_size:" << p.half_kernel_size << "\n"
      << "	" << p.privateNamespace_ << "subscriber_topic:" << p.subscriber_topic << "\n"
      << "	" << p.privateNamespace_ << "subscriber_queue_size:" << p.subscriber_queue_size << "\n"
      << "	" << p.privateNamespace_ << "publisher_topic:" << p.publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "publisher_queue_size:" << p.publisher_queue_size << "\n"
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
  bool erode; /*!< if true do erosion, toherwise dilation */
  int half_kernel_size; /*!< 0.5* kernel sioze of the filter */
  std::string subscriber_topic; /*!< Topic for subscriber */
  int subscriber_queue_size; /*!< Queue size for subscriber */
  std::string publisher_topic; /*!< Topic for publisher */
  int publisher_queue_size; /*!< Queue size for publisher */
  ros::Publisher publisher; /*!< publisher */
  SubscriberPtr<sensor_msgs::Image> subscriber; /*!< subscriber */

private:
  /// \brief Issue a warning about missing default parameters.
  void missingParamsWarning(){
    ROS_WARN_STREAM("[" << nodeName_ << "]\nThe following parameters do not have default values and need to be specified:\n"
    );
  }
};

} // namespace image_preproc_ros_tool
