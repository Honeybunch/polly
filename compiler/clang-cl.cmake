# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_COMPILER_CLANG_CL_CMAKE)
  return()
else()
  set(POLLY_COMPILER_CLANG_CL_CMAKE 1)
endif()

include(polly_fatal_error)

if(XCODE_VERSION)
  set(_err "This toolchain is not available for Xcode")
  set(_err "${_err} because Xcode ignores CMAKE_C(XX)_COMPILER variable.")
  set(_err "${_err} Use xcode.cmake toolchain instead.")
  polly_fatal_error(${_err})
endif()

#find_program(CMAKE_C_COMPILER clang-cl)
#find_program(CMAKE_CXX_COMPILER clang-c;)
#
#if(NOT CMAKE_C_COMPILER)
#  polly_fatal_error("clang-cl not found")
#endif()
#
#if(NOT CMAKE_CXX_COMPILER)
#  polly_fatal_error("clang-cl not found")
#endif()

set(
    CMAKE_C_COMPILER
    "clang-cl"
    CACHE
    STRING
    "C compiler"
    FORCE
)

set(
    CMAKE_CXX_COMPILER
    "clang-cl"
    CACHE
    STRING
    "C++ compiler"
    FORCE
)

set (CMAKE_LINKER lld-link)
set (CMAKE_RC_COMPILER llvm-rc)
set (CMAKE_MT "C:/Program Files (x86)/Windows Kits/10/bin/10.0.18362.0/x64/mt")