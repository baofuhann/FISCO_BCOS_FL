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

# Utility rule file for evmc.

# Include any custom commands dependencies for this target.
include CMakeFiles/evmc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/evmc.dir/progress.make

CMakeFiles/evmc: CMakeFiles/evmc-complete

CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-mkdir
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build
CMakeFiles/evmc-complete: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'evmc'"
	/usr/local/bin/cmake -E make_directory /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles/evmc-complete
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-done

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'evmc'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -Dmake=$(MAKE) -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/tmp/evmc-cfgcmd.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'evmc'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/download-evmc.cmake
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-urlinfo.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'evmc'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/download-evmc.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/verify-evmc.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/extract-evmc.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'evmc'"
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -Dmake=$(MAKE) -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install-RelWithDebInfo.cmake
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc && /usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'evmc'"
	/usr/local/bin/cmake -Dcfgdir= -P /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/tmp/evmc-mkdirs.cmake
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-mkdir

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch-info.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'evmc'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch

/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update-info.txt
/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'evmc'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update

CMakeFiles/evmc.dir/codegen:
.PHONY : CMakeFiles/evmc.dir/codegen

evmc: CMakeFiles/evmc
evmc: CMakeFiles/evmc-complete
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-build
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-configure
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-download
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-install
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-mkdir
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-patch
evmc: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/evmc-update
evmc: CMakeFiles/evmc.dir/build.make
.PHONY : evmc

# Rule to build all files generated by this target.
CMakeFiles/evmc.dir/build: evmc
.PHONY : CMakeFiles/evmc.dir/build

CMakeFiles/evmc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/evmc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/evmc.dir/clean

CMakeFiles/evmc.dir/depend:
	cd /Users/hanallen/go/src/fisco/FISCO-BCOS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanallen/go/src/fisco/FISCO-BCOS /Users/hanallen/go/src/fisco/FISCO-BCOS /Users/hanallen/go/src/fisco/FISCO-BCOS/build /Users/hanallen/go/src/fisco/FISCO-BCOS/build /Users/hanallen/go/src/fisco/FISCO-BCOS/build/CMakeFiles/evmc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/evmc.dir/depend

