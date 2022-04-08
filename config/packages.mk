# Camera (Shutter)
PRODUCT_PACKAGES += SHIFTShutterStub

# F-Droid - repos
PRODUCT_PACKAGES += additional_repos.xml-fdroid

# Launcher
PRODUCT_PACKAGES += SHIFTHome

# OTA
PRODUCT_PACKAGES += SHIFTOTA

# Settings
PRODUCT_PACKAGES += \
    SHIFTColorCalibration \
    SHIFTPartnerCustomization \
    SHIFTParts \
    SHIFTSettingsProvider \

# Support
PRODUCT_PACKAGES += SHIFTSupport

# Themes - Fonts
$(call inherit-product-if-exists, packages/overlays/SHIFT/fonts/fonts.mk)

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