# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/generic_logger
# Build directory: /home/kal1-4/anicar_ws/build/generic_logger
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_generic_logger_gtest_generic_logger-test_generic_logger-test "/home/kal1-4/anicar_ws/build/generic_logger/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/generic_logger/test_results/generic_logger/gtest-generic_logger-test_generic_logger-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/generic_logger/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/generic_logger/lib/generic_logger/generic_logger-test_generic_logger-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/generic_logger/test_results/generic_logger/gtest-generic_logger-test_generic_logger-test.xml")
add_test(_ctest_generic_logger_nosetests_test "/home/kal1-4/anicar_ws/build/generic_logger/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/generic_logger/test_results/generic_logger/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/generic_logger/test_results/generic_logger" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/generic_logger/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/generic_logger/test_results/generic_logger/nosetests-test.xml")
subdirs(gtest)
