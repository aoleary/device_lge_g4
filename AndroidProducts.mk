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
	$(LOCAL_DIR)/rr_f500_usu.mk \
	$(LOCAL_DIR)/rr_h810_usu.mk \
	$(LOCAL_DIR)/rr_h811.mk \
	$(LOCAL_DIR)/rr_h812_usu.mk \
	$(LOCAL_DIR)/rr_h815.mk \
	$(LOCAL_DIR)/rr_h815_usu.mk \
	$(LOCAL_DIR)/rr_ls991_usu.mk \
	$(LOCAL_DIR)/rr_us991_usu.mk \
	$(LOCAL_DIR)/rr_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	rr_f500_usu-userdebug \
	rr_f500_usu-user \
	rr_f500_usu-eng \
	rr_h810_usu-userdebug \
	rr_h810_usu-user \
	rr_h810_usu-eng \
	rr_h811-userdebug \
	rr_h811-user \
	rr_h811-eng \
	rr_h812_usu-userdebug \
	rr_h812_usu-user \
	rr_h812_usu-eng \
	rr_h815-userdebug \
	rr_h815-user \
	rr_h815-eng \
	rr_h815_usu-userdebug \
	rr_h815_usu-user \
	rr_h815_usu-eng \
	rr_ls991_usu-userdebug \
	rr_ls991_usu-user \
	rr_ls991_usu-eng \
	rr_us991_usu-userdebug \
	rr_us991_usu-user \
	rr_us991_usu-eng \
	rr_vs986_usu-userdebug \
	rr_vs986_usu-user \
	rr_vs986_usu-eng

