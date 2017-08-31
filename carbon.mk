# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit device configuration
$(call inherit-product, device/lenovo/A656/full_A656.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)
$(call inherit-product, vendor/carbon/config/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

PRODUCT_NAME := lenovo_A656
PRODUCT_DEVICE := A656
PRODUCT_MODEL := Lenovo A656
PRODUCT_RELEASE_NAME := A656
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
