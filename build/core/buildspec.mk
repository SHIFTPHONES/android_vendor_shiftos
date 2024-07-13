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

# If we do not build with GMS, we build ShiftOS-L
ifneq ($(SHIFT_BUILD_WITH_GMS),true)
    SHIFT_BUILD_TYPE := $(SHIFT_BUILD_TYPE)-light
endif
