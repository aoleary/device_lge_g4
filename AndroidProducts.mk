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
	$(LOCAL_DIR)/xtended_f500_usu.mk \
	$(LOCAL_DIR)/xtended_h810_usu.mk \
	$(LOCAL_DIR)/xtended_h811.mk \
	$(LOCAL_DIR)/xtended_h812_usu.mk \
	$(LOCAL_DIR)/xtended_h815.mk \
	$(LOCAL_DIR)/xtended_h815_usu.mk \
	$(LOCAL_DIR)/xtended_ls991_usu.mk \
	$(LOCAL_DIR)/xtended_us991_usu.mk \
	$(LOCAL_DIR)/xtended_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	xtended_f500_usu-userdebug \
	xtended_f500_usu-user \
	xtended_f500_usu-eng \
	xtended_h810_usu-userdebug \
	xtended_h810_usu-user \
	xtended_h810_usu-eng \
	xtended_h811-userdebug \
	xtended_h811-user \
	xtended_h811-eng \
	xtended_h812_usu-userdebug \
	xtended_h812_usu-user \
	xtended_h812_usu-eng \
	xtended_h815-userdebug \
	xtended_h815-user \
	xtended_h815-eng \
	xtended_h815_usu-userdebug \
	xtended_h815_usu-user \
	xtended_h815_usu-eng \
	xtended_ls991_usu-userdebug \
	xtended_ls991_usu-user \
	xtended_ls991_usu-eng \
	xtended_us991_usu-userdebug \
	xtended_us991_usu-user \
	xtended_us991_usu-eng \
	xtended_vs986_usu-userdebug \
	xtended_vs986_usu-user \
	xtended_vs986_usu-eng

