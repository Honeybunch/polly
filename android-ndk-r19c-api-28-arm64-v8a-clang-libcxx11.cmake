# Copyright (c) 2015, 2019 Ruslan Baratov
# Copyright (c) 2017, Robert Nitsch
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R19C_API_28_ARM64_V8A_CLANG_LIBCXX11_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R19C_API_28_ARM64_V8A_CLANG_LIBCXX11_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_clear_environment_variables.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r19c")
set(ANDROID_PLATFORM "android-28")
set(ANDROID_ABI "arm64-v8a")
set(ANDROID_TOOLCHAIN "clang")
set(ANDROID_STL "c++_static") # LLVM libc++ static

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${ANDROID_PLATFORM} / ${ANDROID_ABI} / \
Clang / c++11 support / libc++ static"
    "Ninja"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx11.cmake") # before toolchain!

include("${CMAKE_CURRENT_LIST_DIR}/os/android.google.cmake")
