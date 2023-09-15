export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

######### Remove built-in repos #########
rm -rf hardware/broadcom/libbt
rm -rf system/qcom
######### Remove built-in repos #########

########### extendrom section ###########
# Enable extendrom
export ENABLE_EXTENDROM=true

#Boot Debug
export EXTENDROM_BOOT_DEBUG=true
export EXTENDROM_DEBUG_PATH=/persist
export EXTENDROM_DEBUG_PATH_SIZE_FULL=200
export EXTENDROM_DEBUG_PATH_SIZE_KERNEL=100

#Magisk preroot
EXTENDROM_PREROOT_BOOT=true
EXTENDROM_PACKAGES=Magisk

#clone extendedrom if it doesnt exist
if [ ! -d "vendor/extendrom" ]
then
git clone https://github.com/sfX-android/android_vendor_extendrom -b main vendor/extendrom
fi


$PWD/vendor/extendrom/er.sh
########### extendrom section ###########
