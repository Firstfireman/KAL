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
CMAKE_SOURCE_DIR = /home/kal1-4/anicar_ws/src/motor_interface

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal1-4/anicar_ws/build/motor_interface

# Include any dependencies generated for this target.
include CMakeFiles/motor_interface.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/motor_interface.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/motor_interface.dir/flags.make

CMakeFiles/motor_interface.dir/src/EPOS.cpp.o: CMakeFiles/motor_interface.dir/flags.make
CMakeFiles/motor_interface.dir/src/EPOS.cpp.o: /home/kal1-4/anicar_ws/src/motor_interface/src/EPOS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal1-4/anicar_ws/build/motor_interface/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/motor_interface.dir/src/EPOS.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/motor_interface.dir/src/EPOS.cpp.o -c /home/kal1-4/anicar_ws/src/motor_interface/src/EPOS.cpp

CMakeFiles/motor_interface.dir/src/EPOS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motor_interface.dir/src/EPOS.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal1-4/anicar_ws/src/motor_interface/src/EPOS.cpp > CMakeFiles/motor_interface.dir/src/EPOS.cpp.i

CMakeFiles/motor_interface.dir/src/EPOS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motor_interface.dir/src/EPOS.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal1-4/anicar_ws/src/motor_interface/src/EPOS.cpp -o CMakeFiles/motor_interface.dir/src/EPOS.cpp.s

CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.requires:

.PHONY : CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.requires

CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.provides: CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.requires
	$(MAKE) -f CMakeFiles/motor_interface.dir/build.make CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.provides.build
.PHONY : CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.provides

CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.provides.build: CMakeFiles/motor_interface.dir/src/EPOS.cpp.o


CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o: CMakeFiles/motor_interface.dir/flags.make
CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o: /home/kal1-4/anicar_ws/src/motor_interface/src/IOWarriorIIC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal1-4/anicar_ws/build/motor_interface/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o -c /home/kal1-4/anicar_ws/src/motor_interface/src/IOWarriorIIC.cpp

CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal1-4/anicar_ws/src/motor_interface/src/IOWarriorIIC.cpp > CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.i

CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal1-4/anicar_ws/src/motor_interface/src/IOWarriorIIC.cpp -o CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.s

CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.requires:

.PHONY : CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.requires

CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.provides: CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.requires
	$(MAKE) -f CMakeFiles/motor_interface.dir/build.make CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.provides.build
.PHONY : CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.provides

CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.provides.build: CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o


# Object files for target motor_interface
motor_interface_OBJECTS = \
"CMakeFiles/motor_interface.dir/src/EPOS.cpp.o" \
"CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o"

# External object files for target motor_interface
motor_interface_EXTERNAL_OBJECTS =

/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: CMakeFiles/motor_interface.dir/src/EPOS.cpp.o
/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o
/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: CMakeFiles/motor_interface.dir/build.make
/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: /home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so
/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: gtest/gtest/libgtest.so
/home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so: CMakeFiles/motor_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kal1-4/anicar_ws/build/motor_interface/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motor_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/motor_interface.dir/build: /home/kal1-4/anicar_ws/devel/.private/motor_interface/lib/libmotor_interface.so

.PHONY : CMakeFiles/motor_interface.dir/build

CMakeFiles/motor_interface.dir/requires: CMakeFiles/motor_interface.dir/src/EPOS.cpp.o.requires
CMakeFiles/motor_interface.dir/requires: CMakeFiles/motor_interface.dir/src/IOWarriorIIC.cpp.o.requires

.PHONY : CMakeFiles/motor_interface.dir/requires

CMakeFiles/motor_interface.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/motor_interface.dir/cmake_clean.cmake
.PHONY : CMakeFiles/motor_interface.dir/clean

CMakeFiles/motor_interface.dir/depend:
	cd /home/kal1-4/anicar_ws/build/motor_interface && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal1-4/anicar_ws/src/motor_interface /home/kal1-4/anicar_ws/src/motor_interface /home/kal1-4/anicar_ws/build/motor_interface /home/kal1-4/anicar_ws/build/motor_interface /home/kal1-4/anicar_ws/build/motor_interface/CMakeFiles/motor_interface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/motor_interface.dir/depend

