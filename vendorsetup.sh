#!/bin/bash
# This is a simple Bash script

# Clone Kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/BalsszZoldyck/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660

# Clone Common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/strongreasons/device_asus_sdm660-common -b 16 device/asus/sdm660-common

# Clone device sepolicy
rm -rf device/qcom/sepolicy-legacy-um
git clone --depth=1 https://github.com/Tiktodz/device_qcom_sepolicy-legacy-um device/qcom/sepolicy-legacy-um

# Clone Vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/BalsszZoldyck/device_asus_sdm660-common -b epos vendor/asus

# sign keys
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp

export BUILD_USERNAME=Bee Zoldcyk
export TZ=Asia/Jakarta
