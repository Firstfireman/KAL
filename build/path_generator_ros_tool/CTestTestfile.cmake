# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/path_generator_ros_tool
# Build directory: /home/kal1-4/anicar_ws/build/path_generator_ros_tool
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_path_generator_ros_tool_rostest_test_path_generator_node.test "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results/path_generator_ros_tool/rostest-test_path_generator_node.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal1-4/anicar_ws/src/path_generator_ros_tool --package=path_generator_ros_tool --results-filename test_path_generator_node.xml --results-base-dir \"/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results\" /home/kal1-4/anicar_ws/src/path_generator_ros_tool/test/path_generator_node.test ")
add_test(_ctest_path_generator_ros_tool_rostest_test_path_generator_nodelet.test "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results/path_generator_ros_tool/rostest-test_path_generator_nodelet.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal1-4/anicar_ws/src/path_generator_ros_tool --package=path_generator_ros_tool --results-filename test_path_generator_nodelet.xml --results-base-dir \"/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results\" /home/kal1-4/anicar_ws/src/path_generator_ros_tool/test/path_generator_nodelet.test ")
add_test(_ctest_path_generator_ros_tool_nosetests_test "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results/path_generator_ros_tool/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results/path_generator_ros_tool" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/path_generator_ros_tool/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/path_generator_ros_tool/test_results/path_generator_ros_tool/nosetests-test.xml")
subdirs(gtest)
