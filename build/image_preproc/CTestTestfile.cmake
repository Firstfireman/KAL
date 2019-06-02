# CMake generated Testfile for 
# Source directory: /home/kal1-4/anicar_ws/src/image_preproc
# Build directory: /home/kal1-4/anicar_ws/build/image_preproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_image_preproc_gtest_image_preproc-test_image_preproc-test "/home/kal1-4/anicar_ws/build/image_preproc/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/image_preproc/test_results/image_preproc/gtest-image_preproc-test_image_preproc-test.xml" "--working-dir" "/home/kal1-4/anicar_ws/src/image_preproc/test" "--return-code" "/home/kal1-4/anicar_ws/devel/.private/image_preproc/lib/image_preproc/image_preproc-test_image_preproc-test --gtest_output=xml:/home/kal1-4/anicar_ws/build/image_preproc/test_results/image_preproc/gtest-image_preproc-test_image_preproc-test.xml")
add_test(_ctest_image_preproc_nosetests_test "/home/kal1-4/anicar_ws/build/image_preproc/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal1-4/anicar_ws/build/image_preproc/test_results/image_preproc/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal1-4/anicar_ws/build/image_preproc/test_results/image_preproc" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal1-4/anicar_ws/src/image_preproc/test --with-xunit --xunit-file=/home/kal1-4/anicar_ws/build/image_preproc/test_results/image_preproc/nosetests-test.xml")
subdirs(gtest)
