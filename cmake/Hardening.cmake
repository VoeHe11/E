set(E_HARDENING_DEBUG
        -O1
        -g3
        -fno-omit-frame-pointer
        -fstack-protector-strong
        -D_FORTIFY_SOURCE=3
)

set(E_HARDENING_RELWITHDEBINFO
        -O2
        -g
        -fstack-protector-strong
        -D_FORTIFY_SOURCE=3
)

set(E_HARDENING_RELEASE
        -O2
        -fstack-protector-strong
        -D_FORTIFY_SOURCE=3
)

set(E_HARDENING_MINSIZEREL
        -Os
        -fstack-protector-strong
        -D_FORTIFY_SOURCE=3
)

if(E_ENABLE_HARDENING)
    list(APPEND E_HARDENING_RELWITHDEBINFO -fhardened)
    list(APPEND E_HARDENING_RELEASE      -fhardened)
    list(APPEND E_HARDENING_MINSIZEREL   -fhardened)
endif()