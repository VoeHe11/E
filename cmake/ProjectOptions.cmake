option(E_WARNINGS_AS_ERRORS "Treat warnings as errors" ON)
option(E_ENABLE_ANALYZER "Enable GCC static analyzer" ON)
option(E_ENABLE_HARDENING "Enable GCC hardening profile" ON)
option(E_ENABLE_PIC "Build targets with PIC" ON)

option(E_BUILD_TESTS "Build tests" ON)
option(E_BUILD_EXAMPLES "Build examples" OFF)
option(E_ENABLE_INSTALL "Enable install/export rules" ON)

option(E_ENABLE_ASAN "Enable AddressSanitizer + UBSan for test executables in Debug" ON)
option(E_ENABLE_TSAN "Enable ThreadSanitizer for test executables in Debug" OFF)

if(E_ENABLE_ASAN AND E_ENABLE_TSAN)
    message(FATAL_ERROR "E_ENABLE_ASAN and E_ENABLE_TSAN must not both be ON.")
endif()

if(E_ENABLE_PIC)
    set(CMAKE_POSITION_INDEPENDENT_CODE ON)
endif()

if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Build type" FORCE)
endif()