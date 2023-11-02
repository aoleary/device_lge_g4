export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

######### Remove built-in repos #########
#Also delete info from manifest as there are stricter checks on manifest
#entries otherwise build will fail as ROM will look for local libbt folder
rm -rf hardware/broadcom/libbt
sed -i '/libbt/d' .repo/manifests/default.xml
rm -rf system/qcom
######### Remove built-in repos #########

########### extendrom section ###########
# Enable extendrom
export ENABLE_EXTENDROM=true

#Magisk preroot
export EXTENDROM_PREROOT_BOOT=true
export EXTENDROM_PACKAGES=Magisk

#clone extendedrom if it doesnt exist
if [ ! -d "vendor/extendrom" ]
then
git clone https://github.com/sfX-android/android_vendor_extendrom -b main vendor/extendrom
fi


$PWD/vendor/extendrom/er.sh
########### extendrom section ###########
