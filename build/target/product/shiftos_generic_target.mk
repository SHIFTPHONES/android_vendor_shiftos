#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/shiftos/config/common_full.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true

PRODUCT_SDK_ADDON_NAME := ShiftOS
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := vendor/shiftos/build/target/product/source.properties

# Copy the manifest and properties files for the SDK add-on.
PRODUCT_SDK_ADDON_COPY_FILES += \
    vendor/shiftos/build/target/product/manifest.ini:manifest.ini \
    vendor/shiftos/build/target/product/package.xml:package.xml \

# Rules for public APIs
PRODUCT_SDK_ADDON_STUB_DEFS += vendor/shiftos/build/target/product/sdk_addon_stub_defs.txt

# Platform
PRODUCT_PACKAGES += org.lineageos.platform
PRODUCT_SDK_ADDON_COPY_MODULES += org.lineageos.platform:libs/org.lineageos.platform.jar

# SDK
PRODUCT_PACKAGES += eco.shift.sdk
PRODUCT_SDK_ADDON_COPY_MODULES += eco.shift.sdk:libs/eco.shift.sdk.jar

ifeq ($(HOST_ARCH),x86_64)
    INTERNAL_SDK_HOST_OS_NAME := linux-x86
else
    INTERNAL_SDK_HOST_OS_NAME := linux-$(REAL_HOST_ARCH)
endif
