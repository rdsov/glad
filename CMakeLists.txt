cmake_minimum_required(VERSION 3.10)
project(glad)

add_library(glad src/glad.c)
target_include_directories(glad PUBLIC include/)

# Add compiler flags on Linux
if(UNIX AND NOT APPLE)
  target_compile_options(glad PRIVATE "-fPIC")
endif()
