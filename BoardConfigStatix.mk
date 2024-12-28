#
# Copyright (C) 2020-2021 The LineageOS Project
# Copyright (C) 2024 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4

# Lineage Health
TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_DEADLINE := true
TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_TOGGLE := false

# Manifests
DEVICE_MANIFEST_FILE += device/google/sunfish/lineage_manifest.xml

# Needed for camera
TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE := true

# Partitions
AB_OTA_PARTITIONS += \
    vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# SELinux
BOARD_SEPOLICY_DIRS += device/google/sunfish/sepolicy-statix/dynamic
BOARD_SEPOLICY_DIRS += device/google/sunfish/sepolicy-statix/vendor

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

include vendor/google/sunfish/BoardConfigVendor.mk
