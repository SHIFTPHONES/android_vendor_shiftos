#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)
$(call inherit-product, vendor/shiftos/build/target/product/shiftos_sdk_phone_x86_64_board.mk)

include vendor/shiftos/build/target/product/shiftos_generic_target.mk
include device/generic/goldfish/board/kernel/x86_64.mk

# Always build modules from source
PRODUCT_MODULE_BUILD_FROM_SOURCE := true

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

# Overrides
PRODUCT_NAME := shiftos_sdk_phone_x86_64
PRODUCT_MODEL := ShiftOS Android SDK built for x86_64

PRODUCT_SDK_ADDON_NAME := shiftos
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := vendor/shiftos/build/target/product/source.properties
