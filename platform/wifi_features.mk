#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.hostapd@1.0.vendor \
    hostapd \
    libwifi-hal-ctrl \
    libwifi-hal-qcom \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/qca6750/WCNSS_qcom_cfg.ini

# WiFi Display
PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    libdisplayconfig.system.qti \
    libnl \
    libqdMetaData \
    libqdMetaData.system \
    libwfdaac_vendor

PRODUCT_BOOT_JARS += \
    WfdCommon
