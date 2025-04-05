# Install script for directory: /Users/hanallen/go/src/fisco/FISCO-BCOS

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libchannelserver/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libdevcore/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libdevcrypto/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libethcore/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstat/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libflowlimit/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libtxpool/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstorage/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libprecompiled/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libnetwork/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libp2p/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libexecutive/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libmptstate/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libblockverifier/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libstoragestate/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libblockchain/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libsync/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libconsensus/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libledger/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/librpc/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libinitializer/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libsecurity/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libeventfilter/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/fisco-bcos/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/build/libnlohmann_json/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
