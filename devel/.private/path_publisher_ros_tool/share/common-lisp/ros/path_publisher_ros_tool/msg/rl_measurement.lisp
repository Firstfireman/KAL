; Auto-generated. Do not edit!


(cl:in-package path_publisher_ros_tool-msg)


;//! \htmlinclude rl_measurement.msg.html

(cl:defclass <rl_measurement> (roslisp-msg-protocol:ros-message)
  ((path_image
    :reader path_image
    :initarg :path_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (dis
    :reader dis
    :initarg :dis
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (switcher
    :reader switcher
    :initarg :switcher
    :type cl:fixnum
    :initform 0))
)

(cl:defclass rl_measurement (<rl_measurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rl_measurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rl_measurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_publisher_ros_tool-msg:<rl_measurement> is deprecated: use path_publisher_ros_tool-msg:rl_measurement instead.")))

(cl:ensure-generic-function 'path_image-val :lambda-list '(m))
(cl:defmethod path_image-val ((m <rl_measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:path_image-val is deprecated.  Use path_publisher_ros_tool-msg:path_image instead.")
  (path_image m))

(cl:ensure-generic-function 'dis-val :lambda-list '(m))
(cl:defmethod dis-val ((m <rl_measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:dis-val is deprecated.  Use path_publisher_ros_tool-msg:dis instead.")
  (dis m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <rl_measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:angle-val is deprecated.  Use path_publisher_ros_tool-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'switcher-val :lambda-list '(m))
(cl:defmethod switcher-val ((m <rl_measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:switcher-val is deprecated.  Use path_publisher_ros_tool-msg:switcher instead.")
  (switcher m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rl_measurement>) ostream)
  "Serializes a message object of type '<rl_measurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_image) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'switcher)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rl_measurement>) istream)
  "Deserializes a message object of type '<rl_measurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_image) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'switcher) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rl_measurement>)))
  "Returns string type for a message object of type '<rl_measurement>"
  "path_publisher_ros_tool/rl_measurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rl_measurement)))
  "Returns string type for a message object of type 'rl_measurement"
  "path_publisher_ros_tool/rl_measurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rl_measurement>)))
  "Returns md5sum for a message object of type '<rl_measurement>"
  "0e7d7db386b9b06d0acdb0486e461fb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rl_measurement)))
  "Returns md5sum for a message object of type 'rl_measurement"
  "0e7d7db386b9b06d0acdb0486e461fb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rl_measurement>)))
  "Returns full string definition for message of type '<rl_measurement>"
  (cl:format cl:nil "sensor_msgs/Image path_image~%float32 dis~%float32 angle~%int8 switcher~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rl_measurement)))
  "Returns full string definition for message of type 'rl_measurement"
  (cl:format cl:nil "sensor_msgs/Image path_image~%float32 dis~%float32 angle~%int8 switcher~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rl_measurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_image))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rl_measurement>))
  "Converts a ROS message object to a list"
  (cl:list 'rl_measurement
    (cl:cons ':path_image (path_image msg))
    (cl:cons ':dis (dis msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':switcher (switcher msg))
))
