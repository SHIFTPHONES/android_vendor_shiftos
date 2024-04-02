#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ShiftOS common_overlays, which needs to happen
# before including any other vendor overlays to allow overriding them.
$(call inherit-product, vendor/shiftos/config/common_overlays.mk)

# Inherit from ShiftOS common
$(call inherit-product, vendor/shiftos/config/common.mk)
