# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc")
  file(MAKE_DIRECTORY "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc")
endif()
file(MAKE_DIRECTORY
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-build"
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps"
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/tmp"
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp"
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src"
  "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/evmc-stamp${cfgdir}") # cfgdir has leading slash
endif()
