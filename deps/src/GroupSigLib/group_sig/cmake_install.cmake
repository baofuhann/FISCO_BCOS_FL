# Install script for directory: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/libgroup_sig.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgroup_sig.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgroup_sig.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgroup_sig.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/group_sig/algorithm/bbs04" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/bbs04/GroupSig_BBS.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/bbs04/GroupSig_BBS_Impl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/group_sig/algorithm/ring-sig" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/ring-sig/Common.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/ring-sig/LinkableRingSig_Impl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/group_sig/algorithm" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/GroupSig.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/GroupSigFactory.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/GroupSigInterface.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/KeyLoaderDumper.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/LinearPair.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/algorithm/RingSig.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/group_sig/devcore" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/Base64.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/CommonFunc.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/CommonStruct.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/ConfigParser.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/SHA3.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/StatusCode.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/easylog.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/devcore/vector_ref.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/GroupSigLib/group_sig/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
