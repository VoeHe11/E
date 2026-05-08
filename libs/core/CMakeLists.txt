add_library(e STATIC
        src/config.c
)

add_library(e::e ALIAS e)

target_include_directories(e
        PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
        PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/internal
)

set_target_properties(e PROPERTIES
        OUTPUT_NAME "e"
        EXPORT_NAME "e"
)

e_apply_library_defaults(e)