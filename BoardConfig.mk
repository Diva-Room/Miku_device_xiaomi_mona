#
# Copyright (C) 2023 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mojin
include device/xiaomi/mojin/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/mona
BOARD_CONFIG_PATH := $(DEVICE_PATH)/platform/board

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mona

# Kernel
include $(BOARD_CONFIG_PATH)/kernel.mk

# OTA Support (Keep mojin compatibility for historical reason)
TARGET_OTA_ASSERT_DEVICE := mona,mojin

# Properties
include $(BOARD_CONFIG_PATH)/properties.mk

# Include proprietary files
include vendor/xiaomi/mona/BoardConfigVendor.mk
