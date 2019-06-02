# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/kal
# Build directory: /home/kal1-4/anicar_ws/build/kal
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_kal_roslaunch-check_launch "/home/kal1-4/anicar_ws/build/kal/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/kal/test_results/kal/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/kal/test_results/kal" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/kal1-4/anicar_ws/build/kal/test_results/kal/roslaunch-check_launch.xml' '/home/kal1-4/anicar_ws/src/kal/launch' ")
subdirs(gtest)
