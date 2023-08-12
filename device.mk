#
# Copyright (C) 2023 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mojin
$(call inherit-product, device/xiaomi/mojin/mojin.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/android/overlay
PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mona/mona-vendor.mk)
