file(GLOB sources "*.cpp")
file(GLOB headers "*.h")

add_library(ethash-cpu ${sources} ${headers})
target_compile_definitions(ethash-cpu PRIVATE PTHREAD_STACK_MIN=16384)
#target_link_libraries(ethash-cpu ethcore ethash::ethash Boost::fiber Boost::thread)
target_link_libraries(ethash-cpu ethcore ethash::ethash Boost::thread)
target_include_directories(ethash-cpu PRIVATE .. ${CMAKE_CURRENT_BINARY_DIR})
