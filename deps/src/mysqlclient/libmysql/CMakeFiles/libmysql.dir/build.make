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
include libmysql/CMakeFiles/libmysql.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libmysql/CMakeFiles/libmysql.dir/compiler_depend.make

# Include the progress variables for this target.
include libmysql/CMakeFiles/libmysql.dir/progress.make

# Include the compile flags for this target's objects.
include libmysql/CMakeFiles/libmysql.dir/flags.make

libmysql/CMakeFiles/libmysql.dir/codegen:
.PHONY : libmysql/CMakeFiles/libmysql.dir/codegen

libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o: libmysql/CMakeFiles/libmysql.dir/flags.make
libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o: libmysql/libmysql_exports_file.cc
libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o: libmysql/CMakeFiles/libmysql.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o -MF CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o.d -o CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o -c /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql/libmysql_exports_file.cc

libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/libmysql.dir/libmysql_exports_file.cc.i"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql/libmysql_exports_file.cc > CMakeFiles/libmysql.dir/libmysql_exports_file.cc.i

libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/libmysql.dir/libmysql_exports_file.cc.s"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql/libmysql_exports_file.cc -o CMakeFiles/libmysql.dir/libmysql_exports_file.cc.s

# Object files for target libmysql
libmysql_OBJECTS = \
"CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o"

# External object files for target libmysql
libmysql_EXTERNAL_OBJECTS =

libmysql/libmysqlclient.18.dylib: libmysql/CMakeFiles/libmysql.dir/libmysql_exports_file.cc.o
libmysql/libmysqlclient.18.dylib: libmysql/CMakeFiles/libmysql.dir/build.make
libmysql/libmysqlclient.18.dylib: libmysql/libclientlib.a
libmysql/libmysqlclient.18.dylib: dbug/libdbug.a
libmysql/libmysqlclient.18.dylib: strings/libstrings.a
libmysql/libmysqlclient.18.dylib: vio/libvio.a
libmysql/libmysqlclient.18.dylib: mysys/libmysys.a
libmysql/libmysqlclient.18.dylib: mysys_ssl/libmysys_ssl.a
libmysql/libmysqlclient.18.dylib: zlib/libzlib.a
libmysql/libmysqlclient.18.dylib: extra/yassl/libyassl.a
libmysql/libmysqlclient.18.dylib: extra/yassl/taocrypt/libtaocrypt.a
libmysql/libmysqlclient.18.dylib: dbug/libdbug.a
libmysql/libmysqlclient.18.dylib: mysys/libmysys.a
libmysql/libmysqlclient.18.dylib: dbug/libdbug.a
libmysql/libmysqlclient.18.dylib: mysys/libmysys.a
libmysql/libmysqlclient.18.dylib: strings/libstrings.a
libmysql/libmysqlclient.18.dylib: zlib/libzlib.a
libmysql/libmysqlclient.18.dylib: libmysql/CMakeFiles/libmysql.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libmysqlclient.dylib"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libmysql.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && $(CMAKE_COMMAND) -E cmake_symlink_library libmysqlclient.18.dylib libmysqlclient.18.dylib libmysqlclient.dylib

libmysql/libmysqlclient.dylib: libmysql/libmysqlclient.18.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate libmysql/libmysqlclient.dylib

# Rule to build all files generated by this target.
libmysql/CMakeFiles/libmysql.dir/build: libmysql/libmysqlclient.dylib
.PHONY : libmysql/CMakeFiles/libmysql.dir/build

libmysql/CMakeFiles/libmysql.dir/clean:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql && $(CMAKE_COMMAND) -P CMakeFiles/libmysql.dir/cmake_clean.cmake
.PHONY : libmysql/CMakeFiles/libmysql.dir/clean

libmysql/CMakeFiles/libmysql.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql/CMakeFiles/libmysql.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libmysql/CMakeFiles/libmysql.dir/depend

