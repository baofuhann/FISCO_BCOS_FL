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
CMAKE_SOURCE_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient

# Utility rule file for ctags.

# Include any custom commands dependencies for this target.
include CMakeFiles/ctags.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ctags.dir/progress.make

CMakeFiles/ctags:
	ctags -R -f CTAGS

CMakeFiles/ctags.dir/codegen:
.PHONY : CMakeFiles/ctags.dir/codegen

ctags: CMakeFiles/ctags
ctags: CMakeFiles/ctags.dir/build.make
.PHONY : ctags

# Rule to build all files generated by this target.
CMakeFiles/ctags.dir/build: ctags
.PHONY : CMakeFiles/ctags.dir/build

CMakeFiles/ctags.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ctags.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ctags.dir/clean

CMakeFiles/ctags.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/CMakeFiles/ctags.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ctags.dir/depend

