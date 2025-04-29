#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Rules
BUILD_BROKEN_DUP_RULES := true

# DTB
BOARD_PREBUILT_DTBIMAGE_DIR := $(TARGET_KERNEL_DIR)
BOARD_PREBUILT_DTBOIMAGE := $(BOARD_PREBUILT_DTBIMAGE_DIR)/dtbo.img

# Kernel
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_NEEDS_DTBOIMAGE := true

# Partitions
AB_OTA_PARTITIONS += \
    vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Reserve space for gapps install
-include vendor/lineage/config/BoardConfigReservedSize.mk

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

include vendor/google/sunfish/BoardConfigVendor.mk
