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
	$(LOCAL_DIR)/aicp_f500_usu.mk \
	$(LOCAL_DIR)/aicp_h810_usu.mk \
	$(LOCAL_DIR)/aicp_h811.mk \
	$(LOCAL_DIR)/aicp_h812_usu.mk \
	$(LOCAL_DIR)/aicp_h815.mk \
	$(LOCAL_DIR)/aicp_h815_usu.mk \
	$(LOCAL_DIR)/aicp_ls991_usu.mk \
	$(LOCAL_DIR)/aicp_us991_usu.mk \
	$(LOCAL_DIR)/aicp_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	aicp_f500_usu-userdebug \
	aicp_f500_usu-user \
	aicp_f500_usu-eng \
	aicp_h810_usu-userdebug \
	aicp_h810_usu-user \
	aicp_h810_usu-eng \
	aicp_h811-userdebug \
	aicp_h811-user \
	aicp_h811-eng \
	aicp_h812_usu-userdebug \
	aicp_h812_usu-user \
	aicp_h812_usu-eng \
	aicp_h815-userdebug \
	aicp_h815-user \
	aicp_h815-eng \
	aicp_h815_usu-userdebug \
	aicp_h815_usu-user \
	aicp_h815_usu-eng \
	aicp_ls991_usu-userdebug \
	aicp_ls991_usu-user \
	aicp_ls991_usu-eng \
	aicp_us991_usu-userdebug \
	aicp_us991_usu-user \
	aicp_us991_usu-eng \
	aicp_vs986_usu-userdebug \
	aicp_vs986_usu-user \
	aicp_vs986_usu-eng

