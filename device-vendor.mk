#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# GMS
ifeq ($(SHIFT_BUILD_WITH_GMS),true)
    # Set Google client ID as required for the approval process
    PRODUCT_SYSTEM_PROPERTIES += \
        ro.com.google.clientidbase=android-uniscope

    # GMS components
    $(call inherit-product, vendor/partner_gms/products/gms_eea_v2_type4c.mk)

    # Add Mainline packages (GPSU).
    $(call inherit-product, vendor/partner_modules/build/mainline_modules.mk)
endif
