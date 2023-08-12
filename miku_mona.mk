#
# Copyright (C) 2023 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mona device
$(call inherit-product, device/xiaomi/mona/device.mk)

# Inherit some common Miku UI stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Maintainer
MIKU_MASTER := AmeChan

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := miku_mona
PRODUCT_DEVICE := mona
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2109119BC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
