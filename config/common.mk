#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BRAND ?= SHIFT

# If not set, default to true
SHIFT_BUILD_WITH_GMS ?= true

# Throw error if packages which do not exist are requested
ifeq ($(TARGET_ENABLE_EPPE),true)
$(call enforce-product-packages-exist-internal,$(wildcard device/*/$(TARGET_PRODUCT)/$(TARGET_PRODUCT).mk),)
endif

# Boot and Shutdown animations
include vendor/shiftos/config/bootanimation.mk

# Packages
include vendor/shiftos/config/packages.mk

# Prebuilt apps
include vendor/shift/apps/esim.mk

# ShiftOS permissions
include vendor/shiftos/config/permissions.mk

# Include ADB keys for debuggable builds
-include vendor/shiftos/security/adb/adb_keys.mk
