#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00TD

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_X00TD,X00TD,X00T

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm636

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := asus/X00TD_defconfig

# Kernel headers generation
BOARD_KERNEL_BUILD_HEADERS := true
TARGET_KERNEL_HEADERS := out/target/product/$(PRODUCT_DEVICE)/obj/KERNEL_OBJ/usr/include
TARGET_NEEDS_KERNEL_HEADERS := true
TARGET_KERNEL_CLANG_COMPILE := true

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/tpd_gesture"

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit the proprietary files
include vendor/asus/X00TD/BoardConfigVendor.mk
