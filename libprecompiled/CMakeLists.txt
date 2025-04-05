
file(GLOB_RECURSE SRC_LIST "*.cpp")
file(GLOB_RECURSE HEADERS "*.h")

add_library(precompiled ${SRC_LIST} ${HEADERS})
target_link_libraries(precompiled PRIVATE blockverifier ethcore nlohmann_json)
target_link_libraries(precompiled PUBLIC storage devcore JsonCpp nlohmann_json)
target_link_libraries(precompiled PRIVATE Paillier GroupSig VRF nlohmann_json)

add_subdirectory(extension)

# target_link_libraries(precompiled PRIVATE nlohmann_json)
