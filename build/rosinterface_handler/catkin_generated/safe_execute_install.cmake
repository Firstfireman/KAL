execute_process(COMMAND "/home/kal1-4/anicar_ws/build/rosinterface_handler/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kal1-4/anicar_ws/build/rosinterface_handler/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
