# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kal1-4/anicar_ws/src/cornucopia

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal1-4/anicar_ws/build/cornucopia

# Include any dependencies generated for this target.
include CMakeFiles/cornucopia-EndToEndTest-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cornucopia-EndToEndTest-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cornucopia-EndToEndTest-test.dir/flags.make

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o: CMakeFiles/cornucopia-EndToEndTest-test.dir/flags.make
CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o: /home/kal1-4/anicar_ws/src/cornucopia/test/EndToEndTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal1-4/anicar_ws/build/cornucopia/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o -c /home/kal1-4/anicar_ws/src/cornucopia/test/EndToEndTest.cpp

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal1-4/anicar_ws/src/cornucopia/test/EndToEndTest.cpp > CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.i

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal1-4/anicar_ws/src/cornucopia/test/EndToEndTest.cpp -o CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.s

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.requires:

.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.requires

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.provides: CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/cornucopia-EndToEndTest-test.dir/build.make CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.provides.build
.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.provides

CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.provides.build: CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o


# Object files for target cornucopia-EndToEndTest-test
cornucopia__EndToEndTest__test_OBJECTS = \
"CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o"

# External object files for target cornucopia-EndToEndTest-test
cornucopia__EndToEndTest__test_EXTERNAL_OBJECTS =

/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o
/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: CMakeFiles/cornucopia-EndToEndTest-test.dir/build.make
/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: /home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/libcornucopia.so
/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: gtest/gtest/libgtest_main.so
/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: gtest/gtest/libgtest.so
/home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test: CMakeFiles/cornucopia-EndToEndTest-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kal1-4/anicar_ws/build/cornucopia/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cornucopia-EndToEndTest-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cornucopia-EndToEndTest-test.dir/build: /home/kal1-4/anicar_ws/devel/.private/cornucopia/lib/cornucopia/cornucopia-EndToEndTest-test

.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/build

CMakeFiles/cornucopia-EndToEndTest-test.dir/requires: CMakeFiles/cornucopia-EndToEndTest-test.dir/test/EndToEndTest.cpp.o.requires

.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/requires

CMakeFiles/cornucopia-EndToEndTest-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cornucopia-EndToEndTest-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/clean

CMakeFiles/cornucopia-EndToEndTest-test.dir/depend:
	cd /home/kal1-4/anicar_ws/build/cornucopia && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal1-4/anicar_ws/src/cornucopia /home/kal1-4/anicar_ws/src/cornucopia /home/kal1-4/anicar_ws/build/cornucopia /home/kal1-4/anicar_ws/build/cornucopia /home/kal1-4/anicar_ws/build/cornucopia/CMakeFiles/cornucopia-EndToEndTest-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cornucopia-EndToEndTest-test.dir/depend

