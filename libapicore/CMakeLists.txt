set(SOURCES
    ApiServer.h ApiServer.cpp
)

add_library(apicore ${SOURCES})
target_compile_definitions(apicore PRIVATE PTHREAD_STACK_MIN=16384)
target_link_libraries(apicore PRIVATE ethcore devcore kawpowminer-buildinfo Boost::filesystem)
target_include_directories(apicore PRIVATE ..)
