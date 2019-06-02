# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/utils_ros
# Build directory: /home/kal1-4/anicar_ws/build/utils_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_utils_ros_rostest_test_smart_subscriber.test "/home/kal1-4/anicar_ws/build/utils_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/utils_ros/test_results/utils_ros/rostest-test_smart_subscriber.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal1-4/anicar_ws/src/utils_ros --package=utils_ros --results-filename test_smart_subscriber.xml --results-base-dir \"/home/kal1-4/anicar_ws/build/utils_ros/test_results\" /home/kal1-4/anicar_ws/src/utils_ros/test/smart_subscriber.test ")
add_test(_ctest_utils_ros_nosetests_test "/home/kal1-4/anicar_ws/build/utils_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/utils_ros/test_results/utils_ros/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/utils_ros/test_results/utils_ros" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/utils_ros/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/utils_ros/test_results/utils_ros/nosetests-test.xml")
subdirs(gtest)
