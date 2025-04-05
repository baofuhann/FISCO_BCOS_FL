# Install script for directory: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Readme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/COPYING"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/LICENSE.mysql"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Readme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/README")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Documentation" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/Docs/INFO_SRC"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/Docs/INFO_BIN"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DebugReadme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL RENAME "LICENSE.mysql-debug" FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/LICENSE.mysql")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DebugReadme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL RENAME "COPYING-debug" FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/COPYING")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DebugReadme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE RENAME "README-debug" FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/README")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/zlib/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/extra/yassl/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/extra/yassl/taocrypt/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/dbug/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/strings/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/vio/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/regex/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/mysys/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/mysys_ssl/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/libmysql/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/extra/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/scripts/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/testclients/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/support-files/cmake_install.cmake")
  include("/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/packaging/WiX/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/install_local_manifest.txt"
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
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
