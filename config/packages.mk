# Camera
PRODUCT_PACKAGES += \
    SHIFT-ShutterStub \
    SnapdragonCamera \

# F-Droid - repos
PRODUCT_PACKAGES += additional_repos.xml-fdroid

# Launcher
PRODUCT_PACKAGES += SHIFT-Home

# OTA
PRODUCT_PACKAGES += SHIFT-OTA

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

else

  # ShiftOS-L specific packages

  # Browser
  PRODUCT_PACKAGES += FirefoxKlar

  # F-Droid - client (ShiftOS-L only until target sdk gets bumped to at least platform sdk)
  PRODUCT_PACKAGES += F-Droid

  # F-Droid - system extensions for ShiftOS-L
  PRODUCT_PACKAGES += F-DroidPrivilegedExtension
  PRODUCT_PACKAGES += permissions_org.fdroid.fdroid.privileged.xml

endif
