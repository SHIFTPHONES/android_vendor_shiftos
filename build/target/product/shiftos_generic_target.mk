#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/shiftos/config/common_full.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true

# Rules for public APIs
PRODUCT_SDK_ADDON_STUB_DEFS := vendor/shiftos/build/target/product/sdk_addon_stub_defs.txt

# Keyhandler
PRODUCT_PACKAGES += eco.shift.os.keyhandler
PRODUCT_SDK_ADDON_COPY_MODULES += eco.shift.os.keyhandler:libs/eco.shift.os.keyhandler.jar
#PRODUCT_SDK_ADDON_DOC_MODULES += eco.shift.os.keyhandler-doc
