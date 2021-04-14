#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../rootdir/etc/fstab.default:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default

PRODUCT_PACKAGES += \
    charger_fstab.qti \
    charger_fw_fstab.qti \
    fstab.default \
    init.batterysecret.rc \
    init.class_main.sh \
    init.kernel.post_boot-lahaina.sh \
    init.kernel.post_boot-shima.sh \
    init.kernel.post_boot-yupik.sh \
    init.kernel.post_boot.sh \
    init.mi_thermald.rc \
    init.qcom.early_boot.sh \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qti.kernel.rc \
    init.qti.kernel.sh \
    init.qti.ufs.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc