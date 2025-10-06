#!/bin/bash
# This is a simple Bash script

# Clone Kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/BalsszZoldyck/android_kernel_asus_sdm660 -b stable kernel/asus/sdm660

# Clone Common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/BalsszZoldyck/android_device_asus_sdm660-common-4.19 -b matrixx device/asus/sdm660-common

# Clone Vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/BalsszZoldyck/proprietary_vendor_asus -b 16 vendor/asus

# sign keys
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp

export BUILD_USERNAME=Bee Zoldcyk
export TZ=Asia/Jakarta
