#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.2.vendor

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power@1.3.vendor

PRODUCT_COPY_FILES += \
    vendor/qcom/opensource/power/config/lahaina/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml \
    $(LOCAL_PATH)/power/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf
