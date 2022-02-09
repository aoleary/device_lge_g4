#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="g4"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export USE_NINJA=true
    export ALLOW_MISSING_DEPENDENCIES=true
    export LC_ALL="C"
    export TARGET_ARCH=arm64
    export FOX_REPLACE_TOOLBOX_GETPROP=1
    export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery"
    export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/platform/soc.0/f9824900.sdhci/by-name/system"
    export FOX_RECOVERY_BOOT_PARTITION="/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot"
    export FOX_USE_BASH_SHELL=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_TAR_BINARY=1
    export FOX_ASH_IS_BASH=1
    export OF_USE_MAGISKBOOT=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
    export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
    export OF_TWRP_COMPATIBILITY_MODE=1
    export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
    export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
    export OF_CLASSIC_LEDS_FUNCTION=1
    export OF_SKIP_FBE_DECRYPTION=1
    export OF_NO_RELOAD_AFTER_DECRYPTION=1
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export FOX_RESET_SETTINGS=0
    export FOX_DELETE_AROMAFM=1
    export OF_USE_GREEN_LED=1
    export FOX_VERSION=R11.1_2
    export OF_MAINTAINER=masemoel
    export FOX_BUILD_TYPE="Beta"
    export OF_ALLOW_DISABLE_NAVBAR=0
    export FOX_BUGGED_AOSP_ARB_WORKAROUND="1420041600"
    export TARGET_DEVICE_ALT=g4,p1,f500,f500_usu,h810,h810_usu,h811,h812,h812_usu,h815,h819,h815_usu,ls991,ls991_usu,us991,us991_usu,vs896,vs896_usu
    export OF_SKIP_ORANGEFOX_PROCESS=1
    export FOX_VANILLA_BUILD=1
    export OF_CHECK_OVERWRITE_ATTEMPTS=1
    export OF_FBE_METADATA_MOUNT_IGNORE=1
    export OF_NO_MIUI_PATCH_WARNING=1
    export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
    export OF_QUICK_BACKUP_LIST="/boot;/system;"
    export OF_ADVANCED_SECURITY=1
    export OF_NO_SAMSUNG_SPECIAL=1
    export FOX_ENABLE_APP_MANAGER=1
    export FOX_USE_NANO_EDITOR=1
    export FOX_USE_XZ_UTILS=1
    export FOX_USE_SPECIFIC_MAGISK_ZIP="/home/aoleary/OrangeFoxR/device/lge/g4/magisk/Magisk-v26.1.zip"

	# Let's see which are our build vars
    if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep "FOX" >> $FOX_BUILD_LOG_FILE
        export | grep "OF_" >> $FOX_BUILD_LOG_FILE
        export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
        export | grep "TW_" >> $FOX_BUILD_LOG_FILE
    fi
fi

