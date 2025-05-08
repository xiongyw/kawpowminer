hunter_config(CURL VERSION ${HUNTER_CURL_VERSION} CMAKE_ARGS HTTP_ONLY=ON CMAKE_USE_OPENSSL=ON CMAKE_USE_LIBSSH2=OFF CURL_CA_PATH=none)
hunter_config(Boost VERSION 1.70.0-p0
    CMAKE_ARGS
        CMAKE_CXX_FLAGS=-DPTHREAD_STACK_MIN=16384
)
#        CMAKE_CXX_FLAGS=-Wno-nonnull
#        CMAKE_CXX_FLAGS=-Wno-error=nonnull
#        CMAKE_CXX_FLAGS=-Wno-deprecated-declarations

hunter_config(ethash VERSION 1.0.0
    URL https://github.com/RavenCommunity/cpp-kawpow/archive/1.1.0.tar.gz
    SHA1 fff78f555a43900b6726c131305a71be769ef769
)
