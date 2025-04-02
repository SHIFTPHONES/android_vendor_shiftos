#
# Copyright (C) The LineageOS Project
# Copyright (C) SHIFT GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

# Increase Partition size: 10G+8M
BOARD_SUPER_PARTITION_SIZE := 10745806848
BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE := 10737418240

# Packaging sdk_addon target
PRODUCT_SDK_ADDON_COPY_FILES += \
    device/generic/goldfish/data/etc/advancedFeatures.ini.arm:images/arm64-v8a/advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:images/arm64-v8a/encryptionkey.img \
    $(EMULATOR_KERNEL_FILE):images/arm64-v8a/kernel-ranchu
