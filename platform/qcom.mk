#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Perf 
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.2.vendor \
    vendor.qti.hardware.perf@2.3

PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance

# Perf (TensorFlow)
PRODUCT_PACKAGES += \
    libtflite

# PSI
PRODUCT_PACKAGES += \
    libpsi.vendor

# QMI
PRODUCT_PACKAGES += \
    libjson

# QTI
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect.vendor \
    libstdc++.vendor \
    libvndfwk_detect_jni.qti.vendor

# QTI service tracker
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2.vendor
