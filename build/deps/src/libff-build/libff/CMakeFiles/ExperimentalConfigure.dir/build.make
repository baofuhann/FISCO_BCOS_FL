# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build

# Utility rule file for ExperimentalConfigure.

# Include any custom commands dependencies for this target.
include libff/CMakeFiles/ExperimentalConfigure.dir/compiler_depend.make

# Include the progress variables for this target.
include libff/CMakeFiles/ExperimentalConfigure.dir/progress.make

libff/CMakeFiles/ExperimentalConfigure:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build/libff && /usr/local/bin/ctest -D ExperimentalConfigure

libff/CMakeFiles/ExperimentalConfigure.dir/codegen:
.PHONY : libff/CMakeFiles/ExperimentalConfigure.dir/codegen

ExperimentalConfigure: libff/CMakeFiles/ExperimentalConfigure
ExperimentalConfigure: libff/CMakeFiles/ExperimentalConfigure.dir/build.make
.PHONY : ExperimentalConfigure

# Rule to build all files generated by this target.
libff/CMakeFiles/ExperimentalConfigure.dir/build: ExperimentalConfigure
.PHONY : libff/CMakeFiles/ExperimentalConfigure.dir/build

libff/CMakeFiles/ExperimentalConfigure.dir/clean:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build/libff && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalConfigure.dir/cmake_clean.cmake
.PHONY : libff/CMakeFiles/ExperimentalConfigure.dir/clean

libff/CMakeFiles/ExperimentalConfigure.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff/libff /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build/libff /Users/hanallen/go/src/fisco/FISCO-BCOS/build/deps/src/libff-build/libff/CMakeFiles/ExperimentalConfigure.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libff/CMakeFiles/ExperimentalConfigure.dir/depend

