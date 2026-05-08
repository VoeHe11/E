function(e_apply_library_defaults target_name)
    if(NOT TARGET "${target_name}")
        message(FATAL_ERROR "Target '${target_name}' does not exist.")
    endif()

    target_compile_features("${target_name}" PUBLIC c_std_23)

    target_compile_options("${target_name}" PRIVATE
            $<$<COMPILE_LANG_AND_ID:C,GNU>:${E_WARNING_OPTIONS}>
            $<$<AND:$<COMPILE_LANG_AND_ID:C,GNU>,$<CONFIG:Debug>>:${E_HARDENING_DEBUG}>
            $<$<AND:$<COMPILE_LANG_AND_ID:C,GNU>,$<CONFIG:RelWithDebInfo>>:${E_HARDENING_RELWITHDEBINFO}>
            $<$<AND:$<COMPILE_LANG_AND_ID:C,GNU>,$<CONFIG:Release>>:${E_HARDENING_RELEASE}>
            $<$<AND:$<COMPILE_LANG_AND_ID:C,GNU>,$<CONFIG:MinSizeRel>>:${E_HARDENING_MINSIZEREL}>
    )
endfunction()

function(e_apply_test_defaults target_name)
    if(NOT TARGET "${target_name}")
        message(FATAL_ERROR "Target '${target_name}' does not exist.")
    endif()

    target_compile_features("${target_name}" PRIVATE c_std_23)

    target_compile_options("${target_name}" PRIVATE
            $<$<COMPILE_LANG_AND_ID:C,GNU>:${E_WARNING_OPTIONS}>
            $<$<AND:$<COMPILE_LANG_AND_ID:C,GNU>,$<CONFIG:Debug>>:${E_HARDENING_DEBUG}>
    )
endfunction()