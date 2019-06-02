;; Auto-generated. Do not edit!


(when (boundp 'path_publisher_ros_tool::rl_control)
  (if (not (find-package "PATH_PUBLISHER_ROS_TOOL"))
    (make-package "PATH_PUBLISHER_ROS_TOOL"))
  (shadow 'rl_control (find-package "PATH_PUBLISHER_ROS_TOOL")))
(unless (find-package "PATH_PUBLISHER_ROS_TOOL::RL_CONTROL")
  (make-package "PATH_PUBLISHER_ROS_TOOL::RL_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude rl_control.msg.html


(defclass path_publisher_ros_tool::rl_control
  :super ros::object
  :slots (_done _speed _steering ))

(defmethod path_publisher_ros_tool::rl_control
  (:init
   (&key
    ((:done __done) nil)
    ((:speed __speed) 0.0)
    ((:steering __steering) 0.0)
    )
   (send-super :init)
   (setq _done __done)
   (setq _speed (float __speed))
   (setq _steering (float __steering))
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ;; float32 _speed
    4
    ;; float32 _steering
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get path_publisher_ros_tool::rl_control :md5sum-) "7c0bd438638c70e9a1199a629bb169b5")
(setf (get path_publisher_ros_tool::rl_control :datatype-) "path_publisher_ros_tool/rl_control")
(setf (get path_publisher_ros_tool::rl_control :definition-)
      "bool done
float32 speed
float32 steering
")



(provide :path_publisher_ros_tool/rl_control "7c0bd438638c70e9a1199a629bb169b5")


