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
CMAKE_SOURCE_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/build

# Include any dependencies generated for this target.
include libstat/CMakeFiles/stat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libstat/CMakeFiles/stat.dir/compiler_depend.make

# Include the progress variables for this target.
include libstat/CMakeFiles/stat.dir/progress.make

# Include the compile flags for this target's objects.
include libstat/CMakeFiles/stat.dir/flags.make

libstat/CMakeFiles/stat.dir/codegen:
.PHONY : libstat/CMakeFiles/stat.dir/codegen

libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o: libstat/CMakeFiles/stat.dir/flags.make
libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o: /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/ChannelNetworkStatHandler.cpp
libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o: libstat/CMakeFiles/stat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o -MF CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o.d -o CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o -c /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/ChannelNetworkStatHandler.cpp

libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.i"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/ChannelNetworkStatHandler.cpp > CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.i

libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.s"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/ChannelNetworkStatHandler.cpp -o CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.s

libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o: libstat/CMakeFiles/stat.dir/flags.make
libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o: /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/NetworkStatHandler.cpp
libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o: libstat/CMakeFiles/stat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o -MF CMakeFiles/stat.dir/NetworkStatHandler.cpp.o.d -o CMakeFiles/stat.dir/NetworkStatHandler.cpp.o -c /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/NetworkStatHandler.cpp

libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/stat.dir/NetworkStatHandler.cpp.i"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/NetworkStatHandler.cpp > CMakeFiles/stat.dir/NetworkStatHandler.cpp.i

libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/stat.dir/NetworkStatHandler.cpp.s"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat/NetworkStatHandler.cpp -o CMakeFiles/stat.dir/NetworkStatHandler.cpp.s

# Object files for target stat
stat_OBJECTS = \
"CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o" \
"CMakeFiles/stat.dir/NetworkStatHandler.cpp.o"

# External object files for target stat
stat_EXTERNAL_OBJECTS =

libstat/libstat.a: libstat/CMakeFiles/stat.dir/ChannelNetworkStatHandler.cpp.o
libstat/libstat.a: libstat/CMakeFiles/stat.dir/NetworkStatHandler.cpp.o
libstat/libstat.a: libstat/CMakeFiles/stat.dir/build.make
libstat/libstat.a: libstat/CMakeFiles/stat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libstat.a"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && $(CMAKE_COMMAND) -P CMakeFiles/stat.dir/cmake_clean_target.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libstat/CMakeFiles/stat.dir/build: libstat/libstat.a
.PHONY : libstat/CMakeFiles/stat.dir/build

libstat/CMakeFiles/stat.dir/clean:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat && $(CMAKE_COMMAND) -P CMakeFiles/stat.dir/cmake_clean.cmake
.PHONY : libstat/CMakeFiles/stat.dir/clean

libstat/CMakeFiles/stat.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS /Users/hanallen/go/src/fisco/FISCO-BCOS/libstat /Users/hanallen/go/src/fisco/FISCO-BCOS/build /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat /Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat/CMakeFiles/stat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libstat/CMakeFiles/stat.dir/depend

