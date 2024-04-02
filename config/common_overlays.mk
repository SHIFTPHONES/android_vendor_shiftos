#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGE_OVERLAYS += vendor/shiftos/overlay/common

# GMS
ifeq ($(WITH_GMS),true)
PRODUCT_PACKAGE_OVERLAYS += vendor/shiftos/overlay/gms
endif
