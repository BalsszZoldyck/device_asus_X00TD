#Clone Common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/BalsszZoldyck/device_asus_sdm660-common -b A19 device/asus/sdm660-common

#Clone Vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/BalsszZoldyck/proprietary_vendor_asus -b 16 vendor/asus

# Clone Kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/BalsszZoldyck/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660

#Sign-Key
rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
