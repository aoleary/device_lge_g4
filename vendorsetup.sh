export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

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

$PWD/vendor/extendrom/er.sh
