# Copyright (c) 2016, 2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_NINJA_LLVM_WIN64_CXX17_CMAKE_)
  return()
else()
  set(POLLY_NINJA_LLVM_WIN64_CXX17_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "Ninja / LLVM / x64 / C++17"
    "Ninja"
)

set(CMAKE_EXE_LINKER_FLAGS_INIT 
  "/LIBPATH:\"C:\\Program Files (x86)\\Windows Kits\\10\\Lib\\10.0.18362.0\\um\\x64\" /LIBPATH:\"C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.20.27508\\lib\\x64\" /LIBPATH:\"C:\\Program Files (x86)\\Windows Kits\\10\\Lib\\10.0.18362.0\\ucrt\\x64\"")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/compiler/clang-cl.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/vs-cxx17.cmake")