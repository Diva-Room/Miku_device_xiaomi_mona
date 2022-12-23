#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/vab.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Boot control
$(call inherit-product, $(LOCAL_PATH)/platform/bootctrl/bootctrl.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Partitions
$(call inherit-product, $(LOCAL_PATH)/platform/partition.mk)
