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

# Include any dependencies generated for this target.
include testclients/CMakeFiles/mysql_client_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include testclients/CMakeFiles/mysql_client_test.dir/compiler_depend.make

# Include the progress variables for this target.
include testclients/CMakeFiles/mysql_client_test.dir/progress.make

# Include the compile flags for this target's objects.
include testclients/CMakeFiles/mysql_client_test.dir/flags.make

testclients/CMakeFiles/mysql_client_test.dir/codegen:
.PHONY : testclients/CMakeFiles/mysql_client_test.dir/codegen

testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o: testclients/CMakeFiles/mysql_client_test.dir/flags.make
testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o: testclients/mysql_client_test.c
testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o: testclients/CMakeFiles/mysql_client_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o -MF CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o.d -o CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o -c /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients/mysql_client_test.c

testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/mysql_client_test.dir/mysql_client_test.c.i"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients/mysql_client_test.c > CMakeFiles/mysql_client_test.dir/mysql_client_test.c.i

testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/mysql_client_test.dir/mysql_client_test.c.s"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients/mysql_client_test.c -o CMakeFiles/mysql_client_test.dir/mysql_client_test.c.s

# Object files for target mysql_client_test
mysql_client_test_OBJECTS = \
"CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o"

# External object files for target mysql_client_test
mysql_client_test_EXTERNAL_OBJECTS =

testclients/mysql_client_test: testclients/CMakeFiles/mysql_client_test.dir/mysql_client_test.c.o
testclients/mysql_client_test: testclients/CMakeFiles/mysql_client_test.dir/build.make
testclients/mysql_client_test: libmysql/libmysqlclient.a
testclients/mysql_client_test: testclients/CMakeFiles/mysql_client_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mysql_client_test"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mysql_client_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testclients/CMakeFiles/mysql_client_test.dir/build: testclients/mysql_client_test
.PHONY : testclients/CMakeFiles/mysql_client_test.dir/build

testclients/CMakeFiles/mysql_client_test.dir/clean:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients && $(CMAKE_COMMAND) -P CMakeFiles/mysql_client_test.dir/cmake_clean.cmake
.PHONY : testclients/CMakeFiles/mysql_client_test.dir/clean

testclients/CMakeFiles/mysql_client_test.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients/CMakeFiles/mysql_client_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : testclients/CMakeFiles/mysql_client_test.dir/depend

