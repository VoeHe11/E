cmake_minimum_required(VERSION 4.2.2)

project(e
        VERSION 1.0.0
        DESCRIPTION "A standard C project"
        LANGUAGES C
)

if(NOT CMAKE_C_COMPILER_ID STREQUAL "GNU")
    message(FATAL_ERROR "This project supports GCC only.")
endif()


#add_subdirectory(core)
