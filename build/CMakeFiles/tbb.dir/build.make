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

# Utility rule file for tbb.

# Include any custom commands dependencies for this target.
include CMakeFiles/tbb.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tbb.dir/progress.make

CMakeFiles/tbb: CMakeFiles/tbb-complete

CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-mkdir
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build
CMakeFiles/tbb-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'tbb'"
	/usr/local/bin/cmake -E make_directory /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles/tbb-complete
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-done

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'tbb'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/tmp/tbb-cfgcmd.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'tbb'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/download-tbb.cmake
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-urlinfo.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'tbb'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/download-tbb.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/verify-tbb.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/extract-tbb.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'tbb'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'tbb'"
	/usr/local/bin/cmake -Dcfgdir= -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/tmp/tbb-mkdirs.cmake
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-mkdir

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch-info.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'tbb'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update-info.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'tbb'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update

CMakeFiles/tbb.dir/codegen:
.PHONY : CMakeFiles/tbb.dir/codegen

tbb: CMakeFiles/tbb
tbb: CMakeFiles/tbb-complete
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-build
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-configure
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-download
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-install
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-mkdir
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-patch
tbb: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/tbb-stamp/tbb-update
tbb: CMakeFiles/tbb.dir/build.make
.PHONY : tbb

# Rule to build all files generated by this target.
CMakeFiles/tbb.dir/build: tbb
.PHONY : CMakeFiles/tbb.dir/build

CMakeFiles/tbb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tbb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tbb.dir/clean

CMakeFiles/tbb.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS /Users/hanallen/go/src/fisco/FISCO-BCOS /Users/hanallen/go/src/fisco/FISCO-BCOS/build /Users/hanallen/go/src/fisco/FISCO-BCOS/build /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles/tbb.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tbb.dir/depend

