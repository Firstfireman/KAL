;; Auto-generated. Do not edit!


(when (boundp 'stargazer_ros_tool::LandmarkArray)
  (if (not (find-package "STARGAZER_ROS_TOOL"))
    (make-package "STARGAZER_ROS_TOOL"))
  (shadow 'LandmarkArray (find-package "STARGAZER_ROS_TOOL")))
(unless (find-package "STARGAZER_ROS_TOOL::LANDMARKARRAY")
  (make-package "STARGAZER_ROS_TOOL::LANDMARKARRAY"))

(in-package "ROS")
;;//! \htmlinclude LandmarkArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stargazer_ros_tool::LandmarkArray
  :super ros::object
  :slots (_header _landmarks ))

(defmethod stargazer_ros_tool::LandmarkArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance stargazer_ros_tool::Landmark :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmarks __landmarks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; stargazer_ros_tool/Landmark[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; stargazer_ros_tool/Landmark[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; stargazer_ros_tool/Landmark[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance stargazer_ros_tool::Landmark :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stargazer_ros_tool::LandmarkArray :md5sum-) "1f301d284612d34647e102aa11cd2d8c")
(setf (get stargazer_ros_tool::LandmarkArray :datatype-) "stargazer_ros_tool/LandmarkArray")
(setf (get stargazer_ros_tool::LandmarkArray :definition-)
      "Header header
Landmark[] landmarks
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

================================================================================
MSG: stargazer_ros_tool/Landmark
Header header
int32 id
LandmarkPoint[] corner_points
LandmarkPoint[] id_points
================================================================================
MSG: stargazer_ros_tool/LandmarkPoint
uint8 row
uint8 col

uint16 u
uint16 v

")



(provide :stargazer_ros_tool/LandmarkArray "1f301d284612d34647e102aa11cd2d8c")


