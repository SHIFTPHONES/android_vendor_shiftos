# Camera
#PRODUCT_PACKAGES += \
#    SHIFT-ShutterStub \
#    SnapdragonCamera \

# Charger
PRODUCT_PACKAGES += \
    shiftos_charger_animation \
    shiftos_charger_animation_vendor \

# F-Droid Basic
PRODUCT_PACKAGES += F-Droid_Basic

# Launcher
PRODUCT_PACKAGES += \
    SHIFT-HomeOverlay \
    SHIFT-HomeQuickStep \

# OTA
PRODUCT_PACKAGES += SHIFT-OTA

# OTA - Host Tools
PRODUCT_HOST_PACKAGES += \
    lz4diff \

# Settings
PRODUCT_PACKAGES += \
    SHIFT-ColorCalibration \
    SHIFT-PartnerCustomization \
    SHIFT-Parts \
    SHIFT-SettingsProvider \

# SetupWizard
PRODUCT_PACKAGES += SHIFT-SetupWizard

# Support
PRODUCT_PACKAGES += SHIFT-Support

# SysConfig
PRODUCT_PACKAGES += \
    shiftos_hiddenapi_package_allowlist \

# Themes - Fonts
$(call inherit-product-if-exists, packages/overlays/SHIFT/fonts/fonts.mk)

# Themes App
PRODUCT_PACKAGES += \
    SHIFT-ThemesStub \

ifeq ($(WITH_GMS),true)

  # ShiftOS-G specific packages
  PRODUCT_PACKAGES += ThemePickerGms

else

  # ShiftOS-L specific packages

  # Browser
  PRODUCT_PACKAGES += FirefoxKlar

endif
