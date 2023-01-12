#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PERMISSIONS_SRC_DIR := frameworks/native/data/etc
PERMISSIONS_COPY_OUT_DIR := $(TARGET_COPY_OUT_VENDOR)/etc/permissions

# Audio Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.audio.low_latency.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.audio.low_latency.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.audio.pro.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.audio.pro.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.bluetooth_le.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.bluetooth_le.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.bluetooth.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.bluetooth.xml \
    $(PERMISSIONS_SRC_DIR)/android.software.midi.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.midi.xml

# Camera Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.camera.flash-autofocus.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.camera.flash-autofocus.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.camera.front.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.camera.front.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.camera.full.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.camera.full.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.camera.raw.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.camera.raw.xml

# GNSS Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.location.gps.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.location.gps.xml

# Graphics API Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.opengles.aep.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.opengles.aep.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.vulkan.compute-0.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.vulkan.compute-0.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.vulkan.level-1.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.vulkan.level-1.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.vulkan.version-1_1.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.vulkan.version-1_1.xml \
    $(PERMISSIONS_SRC_DIR)/android.software.opengles.deqp.level-2020-03-01.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.opengles.deqp.level.xml \
    $(PERMISSIONS_SRC_DIR)/android.software.vulkan.deqp.level-2020-03-01.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.vulkan.deqp.level.xml

# Hardware Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.fingerprint.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.fingerprint.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.touchscreen.multitouch.jazzhand.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.usb.accessory.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.usb.accessory.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.usb.host.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.usb.host.xml

# IR Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.consumerir.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.consumerir.xml

# Misc Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.software.verified_boot.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.verified_boot.xml

# Networks Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.software.ipsec_tunnels.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.ipsec_tunnels.xml

# NFC Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.nfc.ese.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.nfc.ese.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.nfc.hce.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.nfc.hce.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.nfc.hcef.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.nfc.hcef.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.nfc.uicc.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.nfc.uicc.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.nfc.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.nfc.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.se.omapi.ese.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.se.omapi.ese.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.se.omapi.uicc.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.se.omapi.uicc.xml \
    $(PERMISSIONS_SRC_DIR)/com.android.nfc_extras.xml:$(PERMISSIONS_COPY_OUT_DIR)/com.android.nfc_extras.xml \
    $(PERMISSIONS_SRC_DIR)/com.nxp.mifare.xml:$(PERMISSIONS_COPY_OUT_DIR)/com.nxp.mifare.xml

# Sensors Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.accelerometer.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.accelerometer.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.compass.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.compass.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.gyroscope.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.gyroscope.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.light.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.light.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.proximity.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.proximity.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.stepcounter.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.stepcounter.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.sensor.stepdetector.xml:$(PERMISSIONS_COPY_OUT_DIR)/sku_yupik/android.hardware.sensor.stepdetector.xml

# Telephony Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.telephony.cdma.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.telephony.cdma.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.telephony.gsm.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.telephony.gsm.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.telephony.ims.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.telephony.ims.xml \
    $(PERMISSIONS_SRC_DIR)/android.software.sip.voip.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.software.sip.voip.xml

# WiFi Permissions
PRODUCT_COPY_FILES += \
    $(PERMISSIONS_SRC_DIR)/android.hardware.wifi.aware.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.wifi.aware.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.wifi.direct.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.wifi.direct.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.wifi.passpoint.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.wifi.passpoint.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.wifi.rtt.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.wifi.rtt.xml \
    $(PERMISSIONS_SRC_DIR)/android.hardware.wifi.xml:$(PERMISSIONS_COPY_OUT_DIR)/android.hardware.wifi.xml
