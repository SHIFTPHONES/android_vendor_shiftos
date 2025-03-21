#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2022 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

## Set shiftos_charger_density to the density bucket of the device.
#shiftos_charger_density := mdpi
#ifneq (,$(TARGET_SCREEN_DENSITY))
#shiftos_charger_density := $(strip \
#  $(or $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 560))),1),xxxhdpi),\
#       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 400))),1),xxhdpi),\
#       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 280))),1),xhdpi),\
#       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 200))),1),hdpi,mdpi)))
#else ifneq (,$(filter mdpi hdpi xhdpi xxhdpi xxxhdpi,$(PRODUCT_AAPT_PREF_CONFIG)))
## If PRODUCT_AAPT_PREF_CONFIG includes a dpi bucket, then use that value.
#shiftos_charger_density := $(PRODUCT_AAPT_PREF_CONFIG)
#endif
shiftos_charger_density := shift

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_battery_scale
LOCAL_MODULE_STEM := battery_scale.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/battery_scale.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_battery_scale_vendor
LOCAL_MODULE_STEM := battery_scale.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/battery_scale.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_battery_fail
LOCAL_MODULE_STEM := battery_fail.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/battery_fail.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_battery_fail_vendor
LOCAL_MODULE_STEM := battery_fail.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/battery_fail.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_font
LOCAL_MODULE_STEM := percent_font.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/percent_font.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_font_vendor
LOCAL_MODULE_STEM := percent_font.png
LOCAL_SRC_FILES := $(shiftos_charger_density)/percent_font.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_animation
LOCAL_MODULE_STEM := animation.txt
LOCAL_SRC_FILES := animation.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/values/charger
LOCAL_REQUIRED_MODULES := shiftos_charger_battery_scale shiftos_charger_battery_fail shiftos_charger_font
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := shiftos_charger_animation_vendor
LOCAL_MODULE_STEM := animation.txt
LOCAL_SRC_FILES := animation.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/values/charger
LOCAL_REQUIRED_MODULES := shiftos_charger_battery_scale_vendor shiftos_charger_battery_fail_vendor shiftos_charger_font_vendor
include $(BUILD_PREBUILT)
