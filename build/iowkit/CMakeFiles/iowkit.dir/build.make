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
CMAKE_SOURCE_DIR = /home/kal1-4/anicar_ws/src/iowkit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal1-4/anicar_ws/build/iowkit

# Include any dependencies generated for this target.
include CMakeFiles/iowkit.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/iowkit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/iowkit.dir/flags.make

CMakeFiles/iowkit.dir/src/iowkit.c.o: CMakeFiles/iowkit.dir/flags.make
CMakeFiles/iowkit.dir/src/iowkit.c.o: /home/kal1-4/anicar_ws/src/iowkit/src/iowkit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal1-4/anicar_ws/build/iowkit/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/iowkit.dir/src/iowkit.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iowkit.dir/src/iowkit.c.o   -c /home/kal1-4/anicar_ws/src/iowkit/src/iowkit.c

CMakeFiles/iowkit.dir/src/iowkit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iowkit.dir/src/iowkit.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kal1-4/anicar_ws/src/iowkit/src/iowkit.c > CMakeFiles/iowkit.dir/src/iowkit.c.i

CMakeFiles/iowkit.dir/src/iowkit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iowkit.dir/src/iowkit.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kal1-4/anicar_ws/src/iowkit/src/iowkit.c -o CMakeFiles/iowkit.dir/src/iowkit.c.s

CMakeFiles/iowkit.dir/src/iowkit.c.o.requires:

.PHONY : CMakeFiles/iowkit.dir/src/iowkit.c.o.requires

CMakeFiles/iowkit.dir/src/iowkit.c.o.provides: CMakeFiles/iowkit.dir/src/iowkit.c.o.requires
	$(MAKE) -f CMakeFiles/iowkit.dir/build.make CMakeFiles/iowkit.dir/src/iowkit.c.o.provides.build
.PHONY : CMakeFiles/iowkit.dir/src/iowkit.c.o.provides

CMakeFiles/iowkit.dir/src/iowkit.c.o.provides.build: CMakeFiles/iowkit.dir/src/iowkit.c.o


# Object files for target iowkit
iowkit_OBJECTS = \
"CMakeFiles/iowkit.dir/src/iowkit.c.o"

# External object files for target iowkit
iowkit_EXTERNAL_OBJECTS =

/home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so: CMakeFiles/iowkit.dir/src/iowkit.c.o
/home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so: CMakeFiles/iowkit.dir/build.make
/home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so: gtest/gtest/libgtest.so
/home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so: CMakeFiles/iowkit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kal1-4/anicar_ws/build/iowkit/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library /home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iowkit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/iowkit.dir/build: /home/kal1-4/anicar_ws/devel/.private/iowkit/lib/libiowkit.so

.PHONY : CMakeFiles/iowkit.dir/build

CMakeFiles/iowkit.dir/requires: CMakeFiles/iowkit.dir/src/iowkit.c.o.requires

.PHONY : CMakeFiles/iowkit.dir/requires

CMakeFiles/iowkit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/iowkit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/iowkit.dir/clean

CMakeFiles/iowkit.dir/depend:
	cd /home/kal1-4/anicar_ws/build/iowkit && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal1-4/anicar_ws/src/iowkit /home/kal1-4/anicar_ws/src/iowkit /home/kal1-4/anicar_ws/build/iowkit /home/kal1-4/anicar_ws/build/iowkit /home/kal1-4/anicar_ws/build/iowkit/CMakeFiles/iowkit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/iowkit.dir/depend

