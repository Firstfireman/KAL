;; Auto-generated. Do not edit!


(when (boundp 'path_publisher_ros_tool::rl_measurement)
  (if (not (find-package "PATH_PUBLISHER_ROS_TOOL"))
    (make-package "PATH_PUBLISHER_ROS_TOOL"))
  (shadow 'rl_measurement (find-package "PATH_PUBLISHER_ROS_TOOL")))
(unless (find-package "PATH_PUBLISHER_ROS_TOOL::RL_MEASUREMENT")
  (make-package "PATH_PUBLISHER_ROS_TOOL::RL_MEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude rl_measurement.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass path_publisher_ros_tool::rl_measurement
  :super ros::object
  :slots (_path_image _dis _angle _switcher ))

(defmethod path_publisher_ros_tool::rl_measurement
  (:init
   (&key
    ((:path_image __path_image) (instance sensor_msgs::Image :init))
    ((:dis __dis) 0.0)
    ((:angle __angle) 0.0)
    ((:switcher __switcher) 0)
    )
   (send-super :init)
   (setq _path_image __path_image)
   (setq _dis (float __dis))
   (setq _angle (float __angle))
   (setq _switcher (round __switcher))
   self)
  (:path_image
   (&rest __path_image)
   (if (keywordp (car __path_image))
       (send* _path_image __path_image)
     (progn
       (if __path_image (setq _path_image (car __path_image)))
       _path_image)))
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:switcher
   (&optional __switcher)
   (if __switcher (setq _switcher __switcher)) _switcher)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _path_image
    (send _path_image :serialization-length)
    ;; float32 _dis
    4
    ;; float32 _angle
    4
    ;; int8 _switcher
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _path_image
       (send _path_image :serialize s)
     ;; float32 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _switcher
       (write-byte _switcher s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _path_image
     (send _path_image :deserialize buf ptr-) (incf ptr- (send _path_image :serialization-length))
   ;; float32 _dis
     (setq _dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _switcher
     (setq _switcher (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _switcher 127) (setq _switcher (- _switcher 256)))
   ;;
   self)
  )

(setf (get path_publisher_ros_tool::rl_measurement :md5sum-) "0e7d7db386b9b06d0acdb0486e461fb9")
(setf (get path_publisher_ros_tool::rl_measurement :datatype-) "path_publisher_ros_tool/rl_measurement")
(setf (get path_publisher_ros_tool::rl_measurement :definition-)
      "sensor_msgs/Image path_image
float32 dis
float32 angle
int8 switcher
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :path_publisher_ros_tool/rl_measurement "0e7d7db386b9b06d0acdb0486e461fb9")


