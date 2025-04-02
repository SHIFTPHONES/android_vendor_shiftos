#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/shiftos_sdk_phone_arm64.mk \
    $(LOCAL_DIR)/shiftos_sdk_phone_x86_64.mk \

COMMON_LUNCH_CHOICES := \
    shiftos_sdk_phone_arm64-userdebug \
    shiftos_sdk_phone_x86_64-userdebug \
