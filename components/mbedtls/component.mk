#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS := port/include mbedtls/include

ifeq ($(HOST_BUILD),)
COMPONENT_SRCDIRS := mbedtls/library port
COMPONENT_OBJEXCLUDE := mbedtls/library/net_sockets.o
else
COMPONENT_SRCDIRS := mbedtls/library
endif

COMPONENT_SUBMODULES += mbedtls
