# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/bbf_geometry
# Build directory: /home/kal1-4/anicar_ws/build/bbf_geometry
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_bbf_geometry_gtest_bbf_geometry-test_bbf_geometry-test "/home/kal1-4/anicar_ws/build/bbf_geometry/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/bbf_geometry/test_results/bbf_geometry/gtest-bbf_geometry-test_bbf_geometry-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/bbf_geometry/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/bbf_geometry/lib/bbf_geometry/bbf_geometry-test_bbf_geometry-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/bbf_geometry/test_results/bbf_geometry/gtest-bbf_geometry-test_bbf_geometry-test.xml")
add_test(_ctest_bbf_geometry_nosetests_test "/home/kal1-4/anicar_ws/build/bbf_geometry/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/bbf_geometry/test_results/bbf_geometry/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/bbf_geometry/test_results/bbf_geometry" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/bbf_geometry/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/bbf_geometry/test_results/bbf_geometry/nosetests-test.xml")
subdirs(gtest)
