# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(road_map_CONFIG_INCLUDED)
  return()
endif()
set(road_map_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(road_map_SOURCE_PREFIX /home/kal1-4/anicar_ws/src/road_map)
  set(road_map_DEVEL_PREFIX /home/kal1-4/anicar_ws/devel/.private/road_map)
  set(road_map_INSTALL_PREFIX "")
  set(road_map_PREFIX ${road_map_DEVEL_PREFIX})
else()
  set(road_map_SOURCE_PREFIX "")
  set(road_map_DEVEL_PREFIX "")
  set(road_map_INSTALL_PREFIX /home/kal1-4/anicar_ws/install)
  set(road_map_PREFIX ${road_map_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'road_map' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(road_map_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/kal1-4/anicar_ws/src/road_map/include;/usr/include " STREQUAL " ")
  set(road_map_INCLUDE_DIRS "")
  set(_include_dirs "/home/kal1-4/anicar_ws/src/road_map/include;/usr/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Piotr Orzechowski <piotr.orzechowski@kit.edu>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${road_map_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'road_map' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'road_map' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/kal1-4/anicar_ws/src/road_map/${idir}'.  ${_report}")
    endif()
    _list_append_unique(road_map_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "road_map;/usr/lib/libann.so;/usr/lib/x86_64-linux-gnu/libboost_math_c99l.so;/usr/lib/x86_64-linux-gnu/libboost_wserialization.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1l.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_random.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_log_setup.so;/usr/lib/x86_64-linux-gnu/libboost_prg_exec_monitor.so;/usr/lib/x86_64-linux-gnu/libboost_wave.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_signals.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_math_c99.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_locale.so;/usr/lib/x86_64-linux-gnu/libboost_timer.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_graph.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1f.so;/usr/lib/x86_64-linux-gnu/libboost_math_c99f.so;/usr/lib/x86_64-linux-gnu/libboost_log.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND road_map_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND road_map_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND road_map_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/kal1-4/anicar_ws/devel/.private/road_map/lib;/home/kal1-4/anicar_ws/devel/lib;/opt/mrtsoftware/local/lib;/opt/mrtsoftware/release/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(road_map_LIBRARY_DIRS ${lib_path})
      list(APPEND road_map_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'road_map'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND road_map_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(road_map_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${road_map_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "osm;gnss_coordinate_transform")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 road_map_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${road_map_dep}_FOUND)
      find_package(${road_map_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${road_map_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(road_map_INCLUDE_DIRS ${${road_map_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(road_map_LIBRARIES ${road_map_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${road_map_dep}_LIBRARIES})
  _list_append_deduplicate(road_map_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(road_map_LIBRARIES ${road_map_LIBRARIES})

  _list_append_unique(road_map_LIBRARY_DIRS ${${road_map_dep}_LIBRARY_DIRS})
  list(APPEND road_map_EXPORTED_TARGETS ${${road_map_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${road_map_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
