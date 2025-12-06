#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/LEMX/LEMX

# Recovery init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6739.rc:recovery/root/init.recovery.mt6739.rc

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab

# Platform
PRODUCT_PLATFORM := mt6739

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := false

# API level
PRODUCT_SHIPPING_API_LEVEL := 25

