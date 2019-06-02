;; Auto-generated. Do not edit!


(when (boundp 'path_publisher_ros_tool::dis_angle)
  (if (not (find-package "PATH_PUBLISHER_ROS_TOOL"))
    (make-package "PATH_PUBLISHER_ROS_TOOL"))
  (shadow 'dis_angle (find-package "PATH_PUBLISHER_ROS_TOOL")))
(unless (find-package "PATH_PUBLISHER_ROS_TOOL::DIS_ANGLE")
  (make-package "PATH_PUBLISHER_ROS_TOOL::DIS_ANGLE"))

(in-package "ROS")
;;//! \htmlinclude dis_angle.msg.html


(defclass path_publisher_ros_tool::dis_angle
  :super ros::object
  :slots (_dis _angle ))

(defmethod path_publisher_ros_tool::dis_angle
  (:init
   (&key
    ((:dis __dis) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _dis (float __dis))
   (setq _angle (float __angle))
   self)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _dis
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dis
     (setq _dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get path_publisher_ros_tool::dis_angle :md5sum-) "6f06074cb14290372c4f2d255313c323")
(setf (get path_publisher_ros_tool::dis_angle :datatype-) "path_publisher_ros_tool/dis_angle")
(setf (get path_publisher_ros_tool::dis_angle :definition-)
      "float32 dis
float32 angle
")



(provide :path_publisher_ros_tool/dis_angle "6f06074cb14290372c4f2d255313c323")


