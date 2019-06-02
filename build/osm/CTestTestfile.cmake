# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/osm
# Build directory: /home/kal1-4/anicar_ws/build/osm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_osm_gtest_osm-test_osm-test "/home/kal1-4/anicar_ws/build/osm/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/osm/test_results/osm/gtest-osm-test_osm-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/osm/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/osm/lib/osm/osm-test_osm-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/osm/test_results/osm/gtest-osm-test_osm-test.xml")
add_test(_ctest_osm_nosetests_test "/home/kal1-4/anicar_ws/build/osm/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/osm/test_results/osm/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/osm/test_results/osm" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/osm/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/osm/test_results/osm/nosetests-test.xml")
subdirs(gtest)
