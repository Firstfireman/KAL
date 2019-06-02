# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/bbf_commons
# Build directory: /home/kal1-4/anicar_ws/build/bbf_commons
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_bbf_commons_gtest_bbf_commons-test_bbf_commons-test "/home/kal1-4/anicar_ws/build/bbf_commons/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/bbf_commons/test_results/bbf_commons/gtest-bbf_commons-test_bbf_commons-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/bbf_commons/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/bbf_commons/lib/bbf_commons/bbf_commons-test_bbf_commons-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/bbf_commons/test_results/bbf_commons/gtest-bbf_commons-test_bbf_commons-test.xml")
add_test(_ctest_bbf_commons_nosetests_test "/home/kal1-4/anicar_ws/build/bbf_commons/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/bbf_commons/test_results/bbf_commons/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/bbf_commons/test_results/bbf_commons" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/bbf_commons/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/bbf_commons/test_results/bbf_commons/nosetests-test.xml")
subdirs(gtest)
