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
	$(LOCAL_DIR)/evolution_f500_usu.mk \
	$(LOCAL_DIR)/evolution_h810_usu.mk \
	$(LOCAL_DIR)/evolution_h811.mk \
	$(LOCAL_DIR)/evolution_h812_usu.mk \
	$(LOCAL_DIR)/evolution_h815.mk \
	$(LOCAL_DIR)/evolution_h815_usu.mk \
	$(LOCAL_DIR)/evolution_ls991_usu.mk \
	$(LOCAL_DIR)/evolution_us991_usu.mk \
	$(LOCAL_DIR)/evolution_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	evolution_f500_usu-userdebug \
	evolution_f500_usu-user \
	evolution_f500_usu-eng \
	evolution_h810_usu-userdebug \
	evolution_h810_usu-user \
	evolution_h810_usu-eng \
	evolution_h811-userdebug \
	evolution_h811-user \
	evolution_h811-eng \
	evolution_h812_usu-userdebug \
	evolution_h812_usu-user \
	evolution_h812_usu-eng \
	evolution_h815-userdebug \
	evolution_h815-user \
	evolution_h815-eng \
	evolution_h815_usu-userdebug \
	evolution_h815_usu-user \
	evolution_h815_usu-eng \
	evolution_ls991_usu-userdebug \
	evolution_ls991_usu-user \
	evolution_ls991_usu-eng \
	evolution_us991_usu-userdebug \
	evolution_us991_usu-user \
	evolution_us991_usu-eng \
	evolution_vs986_usu-userdebug \
	evolution_vs986_usu-user \
	evolution_vs986_usu-eng

