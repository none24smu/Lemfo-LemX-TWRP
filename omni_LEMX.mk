#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier
PRODUCT_DEVICE := LEMX
PRODUCT_NAME := omni_LEMX
PRODUCT_BRAND := LEMX
PRODUCT_MODEL := LEMX
PRODUCT_MANUFACTURER := alps
PRODUCT_RELEASE_NAME := LEMX

# Default properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

