set(command "/usr/local/bin/cmake;-DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE;-P;/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/rocksdb-stamp/download-rocksdb.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/usr/local/bin/cmake;-DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE;-P;/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/rocksdb-stamp/verify-rocksdb.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/usr/local/bin/cmake;-DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE;-P;/Users/hanallen/go/src/fisco/FISCO-BCOS/deps/src/rocksdb-stamp/extract-rocksdb.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
