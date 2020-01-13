cmake_minimum_required(VERSION 3.5)
project (gcc2cryptoline)
set(CMAKE_CXX_STANDARD 14)

execute_process(
    COMMAND
    ${CMAKE_CXX_COMPILER} -print-file-name=plugin
    OUTPUT_STRIP_TRAILING_WHITESPACE
    OUTPUT_VARIABLE GCC_PLUGIN_DIR
    )
message("GCC plugin  directory is ${GCC_PLUGIN_DIR}")
set(GCC_PLUGIN_INCLUDE_DIR ${GCC_PLUGIN_DIR}/include)
message("GCC plugin header include directory is ${GCC_PLUGIN_INCLUDE_DIR}")
include_directories(${GCC_PLUGIN_INCLUDE_DIR})
include_directories(third_party/fmt/include)
include_directories(third_party/rang/include)
add_subdirectory(third_party/fmt)

include_directories(src)

file(GLOB_RECURSE SOURCE_FILES "src/*.cpp")

message("SOURCE_FILES is ${SOURCE_FILES}")

add_library(gcc2cryptoline SHARED ${SOURCE_FILES})
target_compile_options(gcc2cryptoline PRIVATE -fno-rtti)
set_target_properties(gcc2cryptoline PROPERTIES PREFIX "")
set_target_properties(fmt PROPERTIES POSITION_INDEPENDENT_CODE ON)
target_link_libraries(gcc2cryptoline fmt)

IF(APPLE)
  SET_TARGET_PROPERTIES(
    gcc2cryptoline
    PROPERTIES LINK_FLAGS "-undefined dynamic_lookup"
    SUFFIX ".so")
ENDIF()
