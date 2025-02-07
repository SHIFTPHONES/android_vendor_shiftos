# configure build specifications here

BUILD_NUMBER := $(shell date +%Y%m%d)

# Specify build user and host
BUILD_USERNAME := shiftos
BUILD_HOSTNAME := shiftphones.com

# Set depending on release type
SHIFT_BUILD_TYPE := release

ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    SHIFT_BUILD_TYPE := development
endif
ifeq ($(TARGET_BUILD_VARIANT),eng)
    SHIFT_BUILD_TYPE := engineering
endif

ifeq ($(SHIFT_BUILD_IS_BETA),true)
    SHIFT_BUILD_TYPE := beta
endif

# Disable 64-bit only build
WITH_64_BIT_ONLY := false

# If we do not build with GMS, we build ShiftOS-L
ifneq ($(SHIFT_BUILD_WITH_GMS),true)
    SHIFT_BUILD_TYPE := $(SHIFT_BUILD_TYPE)-light
endif

# Set PLATFORM_BASE_OS for ShiftOS-G
ifeq ($(SHIFT_BUILD_WITH_GMS),true)
    PLATFORM_BASE_OS := SHIFT/axolotl/axolotl:13/TQ3A.230901.001/20240820:user/release-keys
endif
