#
# Copyright (C) 2017 The Code Aurora Forum Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from s2 device
$(call inherit-product, device/leeco/s2/device.mk)

# Inherit some common CAF stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2
PRODUCT_NAME := caf_s2
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := letv

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR_PRODUCT_NAME := Le2_WW
TARGET_VENDOR_DEVICE_NAME := le_s2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_s2 PRODUCT_NAME=Le2_WW

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/Le2_WW/le_s2_ww:6.0.1/IIXOSOP5902105271S/396:user/release-keys \
    PRIVATE_BUILD_DESC="s2-user 6.0.1 IIXOSOP5902105271S 396 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

# Release name
PRODUCT_RELEASE_NAME := s2

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

