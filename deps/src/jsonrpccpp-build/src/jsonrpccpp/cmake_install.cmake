# Install script for directory: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp" TYPE FILE FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/gen/jsonrpccpp/version.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp/common" TYPE FILE FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/gen/jsonrpccpp/common/jsonparser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/client.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp/common" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/errors.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/exception.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/procedure.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/specification.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/specificationparser.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/common/specificationwriter.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp/client" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/client/batchcall.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/client/batchresponse.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/client/client.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/client/iclientconnector.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp/server" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/abstractserver.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/abstractserverconnector.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/iclientconnectionhandler.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/iprocedureinvokationhandler.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/requesthandlerfactory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jsonrpccpp/server/connectors" TYPE FILE FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp/src/jsonrpccpp/server/connectors/httpserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/lib/libjsonrpccpp-common.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-common.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-common.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-common.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/lib/libjsonrpccpp-client.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-client.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-client.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-client.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/lib/libjsonrpccpp-server.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-server.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-server.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libjsonrpccpp-server.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/libjsonrpccpp-server.pc"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/libjsonrpccpp-client.pc"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/libjsonrpccpp-common.pc"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/jsonrpccpp-build/src/jsonrpccpp/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
