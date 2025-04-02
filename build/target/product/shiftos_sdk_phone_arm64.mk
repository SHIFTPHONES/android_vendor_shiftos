#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_arm64.mk)
$(call inherit-product, vendor/shiftos/build/target/product/shiftos_sdk_phone_arm64_board.mk)

include vendor/shiftos/build/target/product/shiftos_generic_target.mk

# Always build modules from source
PRODUCT_MODULE_BUILD_FROM_SOURCE := true

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

# Overrides
PRODUCT_NAME := shiftos_sdk_phone_arm64
PRODUCT_MODEL := ShiftOS Android SDK built for arm64

PRODUCT_SDK_ADDON_NAME := shiftos
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := vendor/shiftos/build/target/product/source.properties
