#
# Copyright 2015 The CyanogenMod Project
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
DEBUG_ME += evolution.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)                                                        
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)                                                
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit ROM vendor telephony stuff
$(call inherit-product, vendor/evolution/config/telephony.mk)

# EvolutionX Specific Flags
EXTRA_UDFPS_ANIMATIONS := false
TARGET_USES_PICO_GAPPS := true

# GAPPS Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages
