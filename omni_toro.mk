# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

# Do this before base_telephony is included since the first instance takes precedence
PRODUCT_COPY_FILES += \
    device/samsung/toro/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Pull in CDMA-specific stuff such as APNs
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toro/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-verizon

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toro
PRODUCT_NAME := omni_toro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mysid \
        BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" \
        PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"
