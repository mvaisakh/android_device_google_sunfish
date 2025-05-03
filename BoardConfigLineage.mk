#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# DTB
BOARD_PREBUILT_DTBIMAGE_DIR := $(TARGET_KERNEL_DIR)
BOARD_PREBUILT_DTBOIMAGE := $(BOARD_PREBUILT_DTBIMAGE_DIR)/dtbo.img

# Kernel
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_NEEDS_DTBOIMAGE := true

# Lineage Health
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH := /sys/class/power_supply/sm7150_bms/charge_disable
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED := 0
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED := 1

# Needed for camera
TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE := true

# Partitions
AB_OTA_PARTITIONS += \
    vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Reserve space for gapps install
-include vendor/lineage/config/BoardConfigReservedSize.mk

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

include vendor/google/sunfish/BoardConfigVendor.mk
