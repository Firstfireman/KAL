# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/road_map
# Build directory: /home/kal1-4/anicar_ws/build/road_map
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_road_map_gtest_road_map-test_road_map-test "/home/kal1-4/anicar_ws/build/road_map/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/road_map/test_results/road_map/gtest-road_map-test_road_map-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/road_map/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/road_map/lib/road_map/road_map-test_road_map-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/road_map/test_results/road_map/gtest-road_map-test_road_map-test.xml")
add_test(_ctest_road_map_nosetests_test "/home/kal1-4/anicar_ws/build/road_map/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/road_map/test_results/road_map/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/road_map/test_results/road_map" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/road_map/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/road_map/test_results/road_map/nosetests-test.xml")
subdirs(gtest)
