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
CMAKE_SOURCE_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build

# Include any dependencies generated for this target.
include CMakeFiles/gen_context.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gen_context.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gen_context.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gen_context.dir/flags.make

CMakeFiles/gen_context.dir/codegen:
.PHONY : CMakeFiles/gen_context.dir/codegen

CMakeFiles/gen_context.dir/src/gen_context.c.o: CMakeFiles/gen_context.dir/flags.make
CMakeFiles/gen_context.dir/src/gen_context.c.o: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1/src/gen_context.c
CMakeFiles/gen_context.dir/src/gen_context.c.o: CMakeFiles/gen_context.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/gen_context.dir/src/gen_context.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/gen_context.dir/src/gen_context.c.o -MF CMakeFiles/gen_context.dir/src/gen_context.c.o.d -o CMakeFiles/gen_context.dir/src/gen_context.c.o -c /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1/src/gen_context.c

CMakeFiles/gen_context.dir/src/gen_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/gen_context.dir/src/gen_context.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1/src/gen_context.c > CMakeFiles/gen_context.dir/src/gen_context.c.i

CMakeFiles/gen_context.dir/src/gen_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/gen_context.dir/src/gen_context.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1/src/gen_context.c -o CMakeFiles/gen_context.dir/src/gen_context.c.s

# Object files for target gen_context
gen_context_OBJECTS = \
"CMakeFiles/gen_context.dir/src/gen_context.c.o"

# External object files for target gen_context
gen_context_EXTERNAL_OBJECTS =

gen_context: CMakeFiles/gen_context.dir/src/gen_context.c.o
gen_context: CMakeFiles/gen_context.dir/build.make
gen_context: CMakeFiles/gen_context.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable gen_context"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gen_context.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gen_context.dir/build: gen_context
.PHONY : CMakeFiles/gen_context.dir/build

CMakeFiles/gen_context.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gen_context.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gen_context.dir/clean

CMakeFiles/gen_context.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1 /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1 /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/secp256k1-build/CMakeFiles/gen_context.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/gen_context.dir/depend

