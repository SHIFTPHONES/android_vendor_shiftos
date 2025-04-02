#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Increase Partition size: 8G+8M
BOARD_SUPER_PARTITION_SIZE ?= 8598323200
BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE ?= 8589934592

# Packaging sdk_addon target
PRODUCT_SDK_ADDON_COPY_FILES += \
    device/generic/goldfish/data/etc/advancedFeatures.ini:images/x86_64/advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:images/x86_64/encryptionkey.img \
    $(EMULATOR_KERNEL_FILE):images/x86_64/kernel-ranchu
