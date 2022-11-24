#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/ulefone/Armor_11_5G

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := mt6873

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k6873v1_64
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 320

# These are for MTK Chipsets only
#BOARD_USES_MTK_HARDWARE := true
#BOARD_HAS_MTK_HARDWARE := true
#MTK_HARDWARE := true

# File systems and partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2000000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_PARTITION_SIZE := 0x1b000000
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1626267648
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_VENDORIMAGE_PARTITION_SIZE := 580616192
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xc0000000

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 5368709120
BOARD_SUPER_PARTITION_GROUPS := ulefone_dynamic_partitions
BOARD_ULEFONE_DYNAMIC_PARTITIONS_SIZE := 5368709120
BOARD_ULEFONE_DYNAMIC_PARTITIONS_PARTITION_LIST := product vendor system

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_SUPPRESS_SECURE_ERASE := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
BOARD_KERNEL_BASE := 0x40078000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
#BOARD_DTB_OFFSET := 0x0bc08000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SECOND_OFFSET :=
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_HASH_TYPE := sha1
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
#BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := Armor_11_5G_defconfig
TARGET_KERNEL_SOURCE := kernel/ulefone/Armor_11_5G

# Hack to get keymaster to recognize the key files
PLATFORM_SECURITY_PATCH := 2021-08-01
VENDOR_SECURITY_PATCH := 2021-08-01
PLATFORM_VERSION := 10

# Platform
TARGET_BOARD_PLATFORM := mt6873

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_NO_RECOVERY := false
TW_HAS_NO_RECOVERY_PARTITION := false
RECOVERY_API_VERSION := 3
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Hack: prevent anti rollback
#PLATFORM_SECURITY_PATCH := 2099-12-31
#VENDOR_SECURITY_PATCH := 2099-12-31
#PLATFORM_VERSION := 16.1.0

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# A/B
AB_OTA_UPDATER := false
# A/B
ENABLE_VIRTUAL_AB := false

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TARGET_RECOVERY_DEVICE_MODULES += libkeymaster4
TARGET_RECOVERY_DEVICE_MODULES += libpuresoftkeymasterdevice
TARGET_RECOVERY_DEVICE_MODULES += ashmemd_aidl_interface-cpp
TARGET_RECOVERY_DEVICE_MODULES += libashmemd_client
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so 
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_USB_STORAGE := false
TW_USE_TOOLBOX := true

TW_DEVICE_VERSION := Ulefone Armor 11 5G 20221122 by Harlock1978 & lopestom

# Excludes
TW_EXCLUDE_TWRPAPP := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
