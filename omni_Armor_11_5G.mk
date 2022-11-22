#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Armor_11_5G device
$(call inherit-product, device/ulefone/Armor_11_5G/device.mk)

PRODUCT_DEVICE := Armor_11_5G
PRODUCT_NAME := omni_Armor_11_5G
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Armor 11 5G
PRODUCT_MANUFACTURER := ulefone

PRODUCT_GMS_CLIENTID_BASE := android-gotron

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Armor_11_5G \
    PRODUCT_NAME=Armor_11_5G_EEA \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 10 QP1A.190711.020 mp2k6885v164P10 release-keys"

BUILD_FINGERPRINT := Ulefone/Armor_11_5G_EEA/Armor_11_5G:10/QP1A.190711.020/1608088743:user/release-keys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
