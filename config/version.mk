#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

####################################################################################

SHIFT_SOS_VERSION_MAJOR := 6
SHIFT_SOS_VERSION_MINOR := 0
SHIFT_SOS_VERSION_EXTRA :=

ifeq ($(SHIFT_BUILD_WITH_GMS),true)
  SHIFT_SOS_VERSION_EXTRA += G
else
  SHIFT_SOS_VERSION_EXTRA += L
endif
SHIFT_SOS_VERSION_EXTRA := $(strip $(SHIFT_SOS_VERSION_EXTRA))

SHIFT_SOS_VERSION_NUMBER := $(SHIFT_SOS_VERSION_MAJOR).$(SHIFT_SOS_VERSION_MINOR)
SHIFT_SOS_VERSION_NAME   := SOS.$(SHIFT_SOS_VERSION_NUMBER).$(SHIFT_SOS_VERSION_EXTRA)

####################################################################################

SHIFT_BUILD_DATE := $(shell date +%Y%m%d)
SHIFT_BUILD_TIMESTAMP := $(shell date +%s)
SHIFT_SOFTWARE_VERSION := $(SHIFT_SOS_VERSION_NAME).$(SHIFT_BUILD_DATE)

####################################################################################

ifneq ($(SHIFT_BUILD_TYPE),)
  SHIFT_SOFTWARE_BUILD_TYPE := $(SHIFT_BUILD_TYPE)
else
  SHIFT_SOFTWARE_BUILD_TYPE := development
endif

####################################################################################
