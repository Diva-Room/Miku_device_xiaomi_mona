#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/qcom/opensource/usb/etc

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/mona/mona-vendor.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product, $(LOCAL_PATH)/platform/vab.mk)

# ANT+
$(call inherit-product, $(LOCAL_PATH)/platform/ant.mk)

# API Level
$(call inherit-product, $(LOCAL_PATH)/platform/api_level.mk)

# Atrace
PRODUCT_PACKAGES += android.hardware.atrace@1.0-service

# Audio
$(call inherit-product, $(LOCAL_PATH)/platform/audio.mk)

# Bluetooth
$(call inherit-product, $(LOCAL_PATH)/platform/bluetooth.mk)

# Boost Framework
TARGET_SUPPORT_MIKU_BOOST_FRAMEWORK := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Boot control
$(call inherit-product, $(LOCAL_PATH)/platform/bootctrl/bootctrl.mk)

# Camera
$(call inherit-product, $(LOCAL_PATH)/platform/camera.mk)

# Dalvik VM configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Developer GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Dex/ART optimization
$(call inherit-product, $(LOCAL_PATH)/platform/dex_optimizations.mk)

# Display 
$(call inherit-product, $(LOCAL_PATH)/platform/display.mk)

# DRM
$(call inherit-product, $(LOCAL_PATH)/platform/drm.mk)

# Fastboot
PRODUCT_PACKAGES += fastbootd

# Fingerprint
$(call inherit-product, $(LOCAL_PATH)/platform/fingerprint.mk)

# Gatekeeper
$(call inherit-product, $(LOCAL_PATH)/platform/gatekeeper.mk)

# GPS
$(call inherit-product, $(LOCAL_PATH)/platform/gps.mk)

# Health
$(call inherit-product, $(LOCAL_PATH)/platform/health.mk)

# HIDL 
$(call inherit-product, $(LOCAL_PATH)/platform/hidl.mk)

# Init Scripts
$(call inherit-product, $(LOCAL_PATH)/platform/init_scripts.mk)

# IPACM
$(call inherit-product, $(LOCAL_PATH)/platform/ipacm.mk)

# IR
$(call inherit-product, $(LOCAL_PATH)/platform/ir.mk)

# Keymaster
$(call inherit-product, $(LOCAL_PATH)/platform/keymaster.mk)

# Media
$(call inherit-product, $(LOCAL_PATH)/platform/media.mk)

# Mona Parts
PRODUCT_PACKAGES += MonaParts

# Networks
$(call inherit-product, $(LOCAL_PATH)/platform/networks.mk)

# NFC
$(call inherit-product, $(LOCAL_PATH)/platform/nfc.mk)

# Overlay
$(call inherit-product, $(LOCAL_PATH)/platform/rro_overlay.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/android/overlay

PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
$(call inherit-product, $(LOCAL_PATH)/platform/partition.mk)

# Permissions
$(call inherit-product, $(LOCAL_PATH)/android/permissions/common_feature_permissions.mk)

# Power
$(call inherit-product, $(LOCAL_PATH)/platform/power.mk)

# QCOM
$(call inherit-product, $(LOCAL_PATH)/platform/qcom.mk)

# RIL
$(call inherit-product, $(LOCAL_PATH)/platform/ril.mk)

# Sensors
$(call inherit-product, $(LOCAL_PATH)/platform/sensors.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Telephony
$(call inherit-product, $(LOCAL_PATH)/platform/telephony.mk)

# Thermal
$(call inherit-product, $(LOCAL_PATH)/platform/thermal.mk)

# Update Engine
$(call inherit-product, $(LOCAL_PATH)/platform/update_engine.mk)

# USB
$(call inherit-product, $(LOCAL_PATH)/platform/usb.mk)

# Vendor service manager
PRODUCT_PACKAGES += vndservicemanager

# Vibrator
$(call inherit-product, $(LOCAL_PATH)/platform/vibrator.mk)

# WiFi & WiFi Display
$(call inherit-product, $(LOCAL_PATH)/platform/wifi_features.mk)
