; Auto-generated. Do not edit!


(cl:in-package path_publisher_ros_tool-msg)


;//! \htmlinclude rl_control.msg.html

(cl:defclass <rl_control> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0))
)

(cl:defclass rl_control (<rl_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rl_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rl_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_publisher_ros_tool-msg:<rl_control> is deprecated: use path_publisher_ros_tool-msg:rl_control instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <rl_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:done-val is deprecated.  Use path_publisher_ros_tool-msg:done instead.")
  (done m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <rl_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:speed-val is deprecated.  Use path_publisher_ros_tool-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <rl_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_publisher_ros_tool-msg:steering-val is deprecated.  Use path_publisher_ros_tool-msg:steering instead.")
  (steering m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rl_control>) ostream)
  "Serializes a message object of type '<rl_control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rl_control>) istream)
  "Deserializes a message object of type '<rl_control>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rl_control>)))
  "Returns string type for a message object of type '<rl_control>"
  "path_publisher_ros_tool/rl_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rl_control)))
  "Returns string type for a message object of type 'rl_control"
  "path_publisher_ros_tool/rl_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rl_control>)))
  "Returns md5sum for a message object of type '<rl_control>"
  "7c0bd438638c70e9a1199a629bb169b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rl_control)))
  "Returns md5sum for a message object of type 'rl_control"
  "7c0bd438638c70e9a1199a629bb169b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rl_control>)))
  "Returns full string definition for message of type '<rl_control>"
  (cl:format cl:nil "bool done~%float32 speed~%float32 steering~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rl_control)))
  "Returns full string definition for message of type 'rl_control"
  (cl:format cl:nil "bool done~%float32 speed~%float32 steering~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rl_control>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rl_control>))
  "Converts a ROS message object to a list"
  (cl:list 'rl_control
    (cl:cons ':done (done msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':steering (steering msg))
))
