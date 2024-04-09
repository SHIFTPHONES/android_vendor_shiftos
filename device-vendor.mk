#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common SHIFT stuff.
$(call inherit-product, vendor/shiftos/config/common_full.mk)

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

ifeq ($(filter qssi,$(TARGET_DEVICE)),)

    PRODUCT_PROPERTY_OVERRIDES += \
        drm.service.enabled=true

    PRODUCT_PACKAGES += \
        libwvdrmengine \
        libwvhidl \
        android.hardware.drm@1.3-service.widevine

endif
