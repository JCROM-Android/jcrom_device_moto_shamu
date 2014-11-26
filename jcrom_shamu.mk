#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/shamu/shamu:5.0/LRX21O/1570415:user/release-keys PRIVATE_BUILD_DESC="shamu-user 5.0 LRX21O 1570415 release-keys"

PRODUCT_NAME := jcrom_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, device/moto/shamu/device.mk)
$(call inherit-product-if-exists, vendor/moto/shamu/device-vendor.mk)

#JCROM
$(call inherit-product, jcrom/moto/shamu/device-shamu.mk)
$(call inherit-product, jcrom/common/common.mk)
