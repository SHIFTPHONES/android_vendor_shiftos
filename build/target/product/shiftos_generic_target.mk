#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/shiftos/config/common_full.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true
