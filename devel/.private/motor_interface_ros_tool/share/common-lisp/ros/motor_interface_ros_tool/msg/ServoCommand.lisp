; Auto-generated. Do not edit!


(cl:in-package motor_interface_ros_tool-msg)


;//! \htmlinclude ServoCommand.msg.html

(cl:defclass <ServoCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoCommand (<ServoCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_interface_ros_tool-msg:<ServoCommand> is deprecated: use motor_interface_ros_tool-msg:ServoCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_interface_ros_tool-msg:header-val is deprecated.  Use motor_interface_ros_tool-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_interface_ros_tool-msg:steering_angle-val is deprecated.  Use motor_interface_ros_tool-msg:steering_angle instead.")
  (steering_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCommand>) ostream)
  "Serializes a message object of type '<ServoCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCommand>) istream)
  "Deserializes a message object of type '<ServoCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCommand>)))
  "Returns string type for a message object of type '<ServoCommand>"
  "motor_interface_ros_tool/ServoCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCommand)))
  "Returns string type for a message object of type 'ServoCommand"
  "motor_interface_ros_tool/ServoCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCommand>)))
  "Returns md5sum for a message object of type '<ServoCommand>"
  "ab7b1e5a2c2ec7531126b10c3c9e22ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCommand)))
  "Returns md5sum for a message object of type 'ServoCommand"
  "ab7b1e5a2c2ec7531126b10c3c9e22ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCommand>)))
  "Returns full string definition for message of type '<ServoCommand>"
  (cl:format cl:nil "Header header~%~%float32 steering_angle # the steering angle of the car in [rad]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCommand)))
  "Returns full string definition for message of type 'ServoCommand"
  (cl:format cl:nil "Header header~%~%float32 steering_angle # the steering angle of the car in [rad]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCommand
    (cl:cons ':header (header msg))
    (cl:cons ':steering_angle (steering_angle msg))
))
