# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/vehicle_setup
# Build directory: /home/kal1-4/anicar_ws/build/vehicle_setup
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_vehicle_setup_gtest_vehicle_setup-test_vehicle_setup-test "/home/kal1-4/anicar_ws/build/vehicle_setup/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/vehicle_setup/test_results/vehicle_setup/gtest-vehicle_setup-test_vehicle_setup-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/vehicle_setup/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/vehicle_setup/lib/vehicle_setup/vehicle_setup-test_vehicle_setup-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/vehicle_setup/test_results/vehicle_setup/gtest-vehicle_setup-test_vehicle_setup-test.xml")
add_test(_ctest_vehicle_setup_nosetests_test "/home/kal1-4/anicar_ws/build/vehicle_setup/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/vehicle_setup/test_results/vehicle_setup/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/vehicle_setup/test_results/vehicle_setup" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/vehicle_setup/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/vehicle_setup/test_results/vehicle_setup/nosetests-test.xml")
subdirs(gtest)
