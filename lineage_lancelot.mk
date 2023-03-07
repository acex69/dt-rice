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

# Inherit some common LineageOs stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
SUSHI_BOOTANIMATION := 1080


PRODUCT_NAME := lineage_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 11 RP1A.200720.011 V12.5.6.0.RJCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot_global/lancelot:11/RP1A.200720.011/V12.5.6.0.RJCMIXM:user/release-keys

# Spoof build description/fingerprint as pixel device 
TARGET_USE_PIXEL_FINGERPRINT := true 
  
# Pixel 
WITH_GMS := true 
TARGET_USE_GOOGLE_TELEPHONY := false 
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true 
  
# Package Type (By default it says AOSP,lets make it Vanilla instead) 
RICE_PACKAGE_TYPE := Gapps 
  
#Unofficial 
RICE_MAINTAINER := zaizel_69 
  
# Graphene Camera 
TARGET_BUILD_GRAPHENEOS_CAMERA := false 
  
# AudioFx 
TARGET_EXCLUDES_AUDIOFX := true 
  

# chipset flag enclose var with "" if more than one
# this will reflect on build/display version, a firmware package/zip name
RICE_PACKAGE_TYPE := "VANILLA AOSP"
