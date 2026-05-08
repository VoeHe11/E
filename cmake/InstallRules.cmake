install(
        TARGETS e
        EXPORT eTargets
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        FILE_SET public_headers DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

install(
        EXPORT eTargets
        FILE eTargets.cmake
        NAMESPACE e::
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/e
)

configure_package_config_file(
        ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Config.cmake.in
        ${CMAKE_CURRENT_BINARY_DIR}/eConfig.cmake
        INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/e
)

write_basic_package_version_file(
        ${CMAKE_CURRENT_BINARY_DIR}/eConfigVersion.cmake
        VERSION ${PROJECT_VERSION}
        COMPATIBILITY SameMajorVersion
)

install(
        FILES
        ${CMAKE_CURRENT_BINARY_DIR}/Config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/eConfigVersion.cmake
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/e
)