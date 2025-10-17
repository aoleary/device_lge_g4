#
# Copyright 2012 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Match both g4 and h815 as valid device names
ifneq ($(filter g4 h815,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

# ---------------------------------------------------------------------------
# Ensure /system/bin/sh symlink persists after OrangeFox ramdisk repack
# ---------------------------------------------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE := persist_system_bin_sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
LOCAL_POST_INSTALL_CMD := \
    rm -f $(TARGET_RECOVERY_ROOT_OUT)/system/bin/sh; \
    ln -sf /sbin/sh $(TARGET_RECOVERY_ROOT_OUT)/system/bin/sh
include $(BUILD_PHONY_PACKAGE)

endif
