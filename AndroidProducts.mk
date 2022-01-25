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
	$(LOCAL_DIR)/havoc_f500_usu.mk \
	$(LOCAL_DIR)/havoc_h810_usu.mk \
	$(LOCAL_DIR)/havoc_h811.mk \
	$(LOCAL_DIR)/havoc_h812_usu.mk \
	$(LOCAL_DIR)/havoc_h815.mk \
	$(LOCAL_DIR)/havoc_h815_usu.mk \
	$(LOCAL_DIR)/havoc_ls991_usu.mk \
	$(LOCAL_DIR)/havoc_us991_usu.mk \
	$(LOCAL_DIR)/havoc_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	havoc_f500_usu-userdebug \
	havoc_f500_usu-user \
	havoc_f500_usu-eng \
	havoc_h810_usu-userdebug \
	havoc_h810_usu-user \
	havoc_h810_usu-eng \
	havoc_h811-userdebug \
	havoc_h811-user \
	havoc_h811-eng \
	havoc_h812_usu-userdebug \
	havoc_h812_usu-user \
	havoc_h812_usu-eng \
	havoc_h815-userdebug \
	havoc_h815-user \
	havoc_h815-eng \
	havoc_h815_usu-userdebug \
	havoc_h815_usu-user \
	havoc_h815_usu-eng \
	havoc_ls991_usu-userdebug \
	havoc_ls991_usu-user \
	havoc_ls991_usu-eng \
	havoc_us991_usu-userdebug \
	havoc_us991_usu-user \
	havoc_us991_usu-eng \
	havoc_vs986_usu-userdebug \
	havoc_vs986_usu-user \
	havoc_vs986_usu-eng

