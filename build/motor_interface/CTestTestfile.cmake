# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/motor_interface
# Build directory: /home/kal1-4/anicar_ws/build/motor_interface
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_motor_interface_gtest_motor_interface-test_motor_interface-test "/home/kal1-4/anicar_ws/build/motor_interface/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/motor_interface/test_results/motor_interface/gtest-motor_interface-test_motor_interface-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/motor_interface/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/motor_interface/motor_interface-test_motor_interface-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/motor_interface/test_results/motor_interface/gtest-motor_interface-test_motor_interface-test.xml")
add_test(_ctest_motor_interface_nosetests_test "/home/kal1-4/anicar_ws/build/motor_interface/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/motor_interface/test_results/motor_interface/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/motor_interface/test_results/motor_interface" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/motor_interface/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/motor_interface/test_results/motor_interface/nosetests-test.xml")
subdirs(gtest)
