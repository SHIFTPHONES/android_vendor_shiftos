#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
#PRODUCT_PACKAGES += \
#    SHIFT-Camera \

# Charger
PRODUCT_PACKAGES += \
    shiftos_charger_animation \
    shiftos_charger_animation_vendor \

# Droid-ify
PRODUCT_PACKAGES += Droid-ify

# F-Droid
PRODUCT_PACKAGES += additional_repos.xml-fdroid

# Launcher (SHIFT-Home)
#PRODUCT_PACKAGES += \
#    SHIFT-HomeOverlay \
#    SHIFT-HomeQuickStep

#PRODUCT_DEXPREOPT_SPEED_APPS += \
#    SHIFT-HomeQuickStep

# OTA
PRODUCT_PACKAGES += \
    SHIFT-OTA

# Overlays
#PRODUCT_PACKAGES += \
#    SHIFT-FrameworksOverlay \
#    SHIFT-SystemUIOverlay

# SDK
#PRODUCT_PACKAGES += \
#    eco.shift.sdk

# Settings
PRODUCT_PACKAGES += \
    SHIFT-PartnerCustomization \
    SHIFT-Parts \
    SHIFT-SettingsProvider

# SetupWizard
#PRODUCT_PACKAGES += SHIFT-SetupWizard

# Support
PRODUCT_PACKAGES += \
    SHIFT-Support

# System Services
#PRODUCT_PACKAGES += \
#    SHIFT-SystemServices

DEVICE_PACKAGE_OVERLAYS += \
    vendor/shiftos/overlay

ifeq ($(WITH_GMS),true)

  # ShiftOS-G specific packages

else

  # ShiftOS-L specific packages

  # F-Droid
  PRODUCT_PACKAGES += F-Droid

endif
