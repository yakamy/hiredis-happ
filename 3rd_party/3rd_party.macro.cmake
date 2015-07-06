# 特殊的依赖项
# =========== installer ===========
set (PROJECT_3RDPARTY_BAS_DIR ${CMAKE_CURRENT_LIST_DIR})
set (PROJECT_3RDPARTY_BUILD_DIR "${CMAKE_BINARY_DIR}/3rd_party")
set (PROJECT_3RDPARTY_PREBUILT_DIR "${PROJECT_3RDPARTY_BUILD_DIR}/prebuilt/${PLATFORM_BUILD_PLATFORM_NAME}")

# set (PROJECT_3RDPARTY_LINK_NAME)
# list(APPEND PROJECT_3RDPARTY_LINK_NAME)

if(NOT EXISTS ${PROJECT_3RDPARTY_PREBUILT_DIR})
    file(MAKE_DIRECTORY ${PROJECT_3RDPARTY_PREBUILT_DIR})
endif()

include_directories("${PROJECT_3RDPARTY_PREBUILT_DIR}/include")
link_directories("${PROJECT_3RDPARTY_PREBUILT_DIR}/lib")

# 强依赖 libhiredis


# 弱依赖 libuv

# 弱依赖 libevent

include("${PROJECT_3RDPARTY_BAS_DIR}/3rd_party.libhiredis.cmake")