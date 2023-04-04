#
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from bronco device
$(call inherit-product, device/motorola/bronco/device.mk)

PRODUCT_NAME := calyx_bronco
PRODUCT_DEVICE := bronco
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := ThinkPhone by motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bronco_g-user 16 W1TB36H.1-63 1545f-f6b60 release-keys MW-413" \
    BuildFingerprint="motorola/bronco_g/bronco:16/W1TB36H.1-63/1545f-f6b60:user/release-keys" \
    DeviceProduct="bronco_g"
