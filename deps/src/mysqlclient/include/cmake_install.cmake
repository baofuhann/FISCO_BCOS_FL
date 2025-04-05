# Install script for directory: /Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql_com.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_command.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql_time.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_list.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_alloc.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/typelib.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/binary_log_types.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_dbug.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/m_string.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_sys.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_xml.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql_embed.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_thread.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_thread_local.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/decimal.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/errmsg.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_global.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_getopt.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/sslopt-longopts.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_dir.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/sslopt-vars.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/sslopt-case.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/sql_common.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/keycache.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/m_ctype.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_compiler.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql_com_server.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_byteorder.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/byte_order_generic.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/byte_order_generic_x86.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/little_endian.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/big_endian.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/thr_cond.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/thr_mutex.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/thr_rwlock.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql_version.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/my_config.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysqld_ername.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysqld_error.h"
    "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/sql_state.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE DIRECTORY FILES "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/mysql/" REGEX "/[^/]*\\.h$" REGEX "/psi\\_abi[^/]*$" EXCLUDE)
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/mysqlclient/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
