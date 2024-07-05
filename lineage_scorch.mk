#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from scorch device
$(call inherit-product, device/realme/scorch/device.mk)

PRODUCT_DEVICE := scorch
PRODUCT_NAME := lineage_scorch
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3563
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1661357406223 release-keys"

BUILD_FINGERPRINT := realme/RMX3561/scorch:12/SP1A.210812.016/1661358446013:user/release-keys

