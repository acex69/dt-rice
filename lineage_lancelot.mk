#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/lancelot/device.mk)

# Inherit some common Alphadroid stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080 
TARGET_SUPPORTS_QUICK_TAP := true

# Alphadroid Stuffs 
TARGET_HAS_UDFPS := false 
TARGET_ENABLE_BLUR := true 
TARGET_INCLUDE_MATLOG := false 
TARGET_USE_PIXEL_LAUNCHER := false 
TARGET_EXCLUDES_AUDIOFX := true 
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps 
WITH_GAPPS := true 
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Blaze Maintainer 
ALPHA_MAINTAINER := raizel 
ALPHA_BUILD_TYPE := Unofficial

PRODUCT_NAME := lineage_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 11 RP1A.200720.011 V12.5.6.0.RJCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot_global/lancelot:11/RP1A.200720.011/V12.5.6.0.RJCMIXM:user/release-keys

