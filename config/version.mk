#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

####################################################################################

SHIFT_SOS_VERSION_MAJOR := 6
SHIFT_SOS_VERSION_MINOR := 0
SHIFT_SOS_VERSION_EXTRA :=

SHIFT_SOS_VERSION_NUMBER := $(SHIFT_SOS_VERSION_MAJOR).$(SHIFT_SOS_VERSION_MINOR)

ifneq ($(filter qssi,$(TARGET_PRODUCT)),)
  ifeq ($(SHIFT_BUILD_WITH_GMS),true)
    SHIFT_SOS_VERSION_EXTRA += G
  else
    SHIFT_SOS_VERSION_EXTRA += L
  endif

  SHIFT_SOS_VERSION_EXTRA := $(strip $(SHIFT_SOS_VERSION_EXTRA))
  SHIFT_SOS_VERSION_NAME   := SOS.$(SHIFT_SOS_VERSION_NUMBER).$(SHIFT_SOS_VERSION_EXTRA)
else
  SHIFT_SOS_VERSION_NAME   := SOS.$(SHIFT_SOS_VERSION_NUMBER)
endif

####################################################################################

SHIFT_VERSION_DISPLAY := $(SHIFT_SOS_VERSION_NUMBER).$(SHIFT_SOS_VERSION_EXTRA)

####################################################################################

ifneq ($(SHIFT_BUILD_TYPE),)
  SHIFT_SOFTWARE_BUILD_TYPE := $(SHIFT_BUILD_TYPE)
else
  SHIFT_SOFTWARE_BUILD_TYPE := development
endif

####################################################################################
