#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common crDroid stuff
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)



# Inherit some common device props
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_EXCLUDES_AUDIOFX := false
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sdm660_64-user 10 QKQ1 72 release-keys" \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    BuildFingerprint=asus/ASUS_X00TD/ASUS_X00TD:10/QKQ1/17.2017.2012.438-20201203:user/release-keys
