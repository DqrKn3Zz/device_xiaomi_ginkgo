#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common Resurrection Remix stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official
BUILD_RR_WALLPAPERS := true
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/rr/config/common_full_phone.mk)
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
