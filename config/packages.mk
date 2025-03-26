#
# Copyright (C) 2024 SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Actions
PRODUCT_PACKAGES += \
    SHIFT-Actions

# Camera
PRODUCT_PACKAGES += \
    SHIFT-Camera \

# Charger
PRODUCT_PACKAGES += \
    shiftos_charger_animation \
    shiftos_charger_animation_vendor \

# Customizations - Fonts
$(call inherit-product-if-exists, external/google-fonts/jetbrains-mono/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/open-sans/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontJetBrainsMonoOverlay \
    FontLatoOverlay \
    FontOpenSansOverlay \
    FontRubikOverlay

# Customizations - Icons
PRODUCT_PACKAGES += \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay

# F-Droid
PRODUCT_PACKAGES += additional_repos.xml-fdroid

# Launcher (SHIFT-Home)
PRODUCT_PACKAGES += \
    SHIFT-HomeOverlay \
    SHIFT-HomeQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    SHIFT-HomeQuickStep

# Music (Eleven)
PRODUCT_PACKAGES += \
    Eleven

# OTA
PRODUCT_PACKAGES += \
    SHIFT-OTA

# Overlays
PRODUCT_PACKAGES += \
    SHIFT-FrameworksOverlay \
    SHIFT-SystemUIOverlay

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Settings
PRODUCT_PACKAGES += \
    SHIFT-PartnerCustomization \
    SHIFT-Parts \
    SHIFT-SettingsProvider

# SetupWizard
PRODUCT_PACKAGES += SHIFT-SetupWizard

# Support
PRODUCT_PACKAGES += \
    SHIFT-Support

# System Services
PRODUCT_PACKAGES += \
    SHIFT-SystemServices

# ThemePicker
PRODUCT_PACKAGES += \
    ThemePicker

DEVICE_PACKAGE_OVERLAYS += \
    vendor/shiftos/overlay

ifeq ($(WITH_GMS),true)

  # ShiftOS-G specific packages

else

  # ShiftOS-L specific packages

  # F-Droid
  PRODUCT_PACKAGES += F-Droid

endif
