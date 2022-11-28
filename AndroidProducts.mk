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
	$(LOCAL_DIR)/corvus_f500_usu.mk \
	$(LOCAL_DIR)/corvus_h810_usu.mk \
	$(LOCAL_DIR)/corvus_h811.mk \
	$(LOCAL_DIR)/corvus_h812_usu.mk \
	$(LOCAL_DIR)/corvus_h815.mk \
	$(LOCAL_DIR)/corvus_h815_usu.mk \
	$(LOCAL_DIR)/corvus_ls991_usu.mk \
	$(LOCAL_DIR)/corvus_us991_usu.mk \
	$(LOCAL_DIR)/corvus_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	corvus_f500_usu-userdebug \
	corvus_f500_usu-user \
	corvus_f500_usu-eng \
	corvus_h810_usu-userdebug \
	corvus_h810_usu-user \
	corvus_h810_usu-eng \
	corvus_h811-userdebug \
	corvus_h811-user \
	corvus_h811-eng \
	corvus_h812_usu-userdebug \
	corvus_h812_usu-user \
	corvus_h812_usu-eng \
	corvus_h815-userdebug \
	corvus_h815-user \
	corvus_h815-eng \
	corvus_h815_usu-userdebug \
	corvus_h815_usu-user \
	corvus_h815_usu-eng \
	corvus_ls991_usu-userdebug \
	corvus_ls991_usu-user \
	corvus_ls991_usu-eng \
	corvus_us991_usu-userdebug \
	corvus_us991_usu-user \
	corvus_us991_usu-eng \
	corvus_vs986_usu-userdebug \
	corvus_vs986_usu-user \
	corvus_vs986_usu-eng

