#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from curtana device
$(call inherit-product, device/redmi/curtana/device.mk)

PRODUCT_DEVICE := curtana
PRODUCT_NAME := omni_curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := curtana
PRODUCT_MANUFACTURER := redmi

PRODUCT_GMS_CLIENTID_BASE := android-redmi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="curtana-userdebug 10 QKQ1.191215.002 504 test-keys"

BUILD_FINGERPRINT := Redmi/curtana/curtana:10/QKQ1.191215.002/504:userdebug/test-keys
