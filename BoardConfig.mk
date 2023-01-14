#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/mona
BOARD_CONFIG_PATH := $(DEVICE_PATH)/platform/board
PLATFORM_NAME := lahaina

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Arch
include $(BOARD_CONFIG_PATH)/arch.mk

# Audio
include $(BOARD_CONFIG_PATH)/audio_board_config.mk

# Bluetooth
TARGET_DISABLE_BLUETOOTH_LE_READ_BUFFER_SIZE_V2 := true
TARGET_DISABLE_BLUETOOTH_LE_SET_HOST_FEATURE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mona
TARGET_NO_BOOTLOADER := true

# Build
include $(BOARD_CONFIG_PATH)/build_rules.mk

# Display
include $(BOARD_CONFIG_PATH)/display_board_config.mk

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/platform/manifest/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/platform/manifest/vendor_framework_compatibility_matrix.xml 
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/platform/manifest/manifest_yupik.xml 

# Kernel
include $(BOARD_CONFIG_PATH)/kernel.mk

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := $(PLATFORM_NAME)

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
include $(BOARD_CONFIG_PATH)/partition_board_config.mk

# Properties
include $(BOARD_CONFIG_PATH)/properties.mk

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2022-08-01

# SELinux
include $(DEVICE_PATH)/platform/sepolicy/sepolicy.mk

# Verified Boot
include $(BOARD_CONFIG_PATH)/vbmeta.mk

# WLAN
include $(BOARD_CONFIG_PATH)/wlan_board_config.mk

# Include the proprietary files BoardConfig.
include vendor/xiaomi/mona/BoardConfigVendor.mk
