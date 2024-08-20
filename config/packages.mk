#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Charger
PRODUCT_PACKAGES += \
    shiftos_charger_animation \
    shiftos_charger_animation_vendor \

# F-Droid
-include vendor/shiftos/prebuilt/apps/F-Droid/F-Droid.mk
PRODUCT_PACKAGES += additional_repos.xml-fdroid

# Launcher
PRODUCT_PACKAGES += \
    SHIFT-Home

# Music (Eleven)
PRODUCT_PACKAGES += \
    Eleven

# OTA
PRODUCT_PACKAGES += \
    SHIFT-OTA

# ThemePicker
PRODUCT_PACKAGES += \
    ThemePicker

DEVICE_PACKAGE_OVERLAYS += \
    vendor/shiftos/overlay
