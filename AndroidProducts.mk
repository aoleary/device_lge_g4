#
# Copyright 2015 The Android Open Source Project
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

# Screen density
# must be defined here as they get readonly later on
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_MAKEFILES += \
	$(LOCAL_DIR)/aosp_f500_usu.mk \
	$(LOCAL_DIR)/aosp_h810_usu.mk \
	$(LOCAL_DIR)/aosp_h811.mk \
	$(LOCAL_DIR)/aosp_h812_usu.mk \
	$(LOCAL_DIR)/aosp_h815.mk \
	$(LOCAL_DIR)/aosp_h815_usu.mk \
	$(LOCAL_DIR)/aosp_ls991_usu.mk \
	$(LOCAL_DIR)/aosp_us991_usu.mk \
	$(LOCAL_DIR)/aosp_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	aosp_f500_usu-userdebug \
	aosp_f500_usu-user \
	aosp_f500_usu-eng \
	aosp_h810_usu-userdebug \
	aosp_h810_usu-user \
	aosp_h810_usu-eng \
	aosp_h811-userdebug \
	aosp_h811-user \
	aosp_h811-eng \
	aosp_h812_usu-userdebug \
	aosp_h812_usu-user \
	aosp_h812_usu-eng \
	aosp_h815-userdebug \
	aosp_h815-user \
	aosp_h815-eng \
	aosp_h815_usu-userdebug \
	aosp_h815_usu-user \
	aosp_h815_usu-eng \
	aosp_ls991_usu-userdebug \
	aosp_ls991_usu-user \
	aosp_ls991_usu-eng \
	aosp_us991_usu-userdebug \
	aosp_us991_usu-user \
	aosp_us991_usu-eng \
	aosp_vs986_usu-userdebug \
	aosp_vs986_usu-user \
	aosp_vs986_usu-eng

