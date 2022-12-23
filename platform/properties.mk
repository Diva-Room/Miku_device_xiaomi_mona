#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PLATFORM_MAKEFILES_PATH := device/xiaomi/mona/platform/props

TARGET_ODM_PROP += $(PLATFORM_MAKEFILES_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(PLATFORM_MAKEFILES_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(PLATFORM_MAKEFILES_PATH)/system_ext.prop
TARGET_SYSTEM_PROP += $(PLATFORM_MAKEFILES_PATH)/system.prop
TARGET_VENDOR_PROP += $(PLATFORM_MAKEFILES_PATH)/vendor.prop
