export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

# Setup variables
TIMEKEEP="https://github.com/LineageOS/android_hardware_sony_timekeep.git -b lineage-18.1"
POWER="https://github.com/aoleary/havoc_vendor_qcom_opensource_power.git -b eleven"
INTERFACES="https://github.com/aoleary/havoc_hardware_havoc_interfaces.git -b eleven"

# Check if this is the initial setup or not
FILE=initialsetup > /dev/null 2>&1
if test -f "$FILE"; then :
else
# Remove in-built repos
	rm -rf hardware/broadcom/libbt > /dev/null 2>&1
	rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr > /dev/null 2>&1
	rm -rf system/qcom > /dev/null 2>&1
        rm -rf vendor/qcom/opensource/power > /dev/null 2>&1
        rm -rf hardware/havoc/interfaces > /dev/null 2>&1
    echo "Downloading dependencies (initial setup)..."
fi

# Pull changes / download non-existing dependencies
# Sony Timekeep
if [ -d "hardware/sony/timekeep" ] 
then
    echo "Cloning Timekeep"
    git -C hardware/sony/timekeep pull > /dev/null 2>&1
else
    git clone $TIMEKEEP hardware/sony/timekeep > /dev/null 2>&1
    echo "Sony Timekeep	downloaded"
fi
# Power
if [ -d "vendor/qcom/opensource/power" ]
then
    echo "Cloning aoleary/havoc_vendor_qcom_opensource_power"
    git -C vendor/qcom/opensource/power pull > /dev/null 2>&1
else
    git clone $POWER vendor/qcom/opensource/power > /dev/null 2>&1
    echo "Power downloaded"
fi

# Harware interfaces
if [ -d "hardware/havoc/interfaces" ]
then
    echo "Cloning aoleary/havoc_hardware_havoc_interfaces"
    git -C hardware/havoc/interfaces > /dev/null 2>&1
else
    git clone $INTERFACES hardware/havoc/interfaces > /dev/null 2>&1
    echo "Hardware Interfaces downloaded"
fi

# Create file after initial setup
touch initialsetup > /dev/null 2>&1

