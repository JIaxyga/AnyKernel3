# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=tissot
device.name2=tissot_sprout
supported.versions=11
'; } # end properties

# shell variables
block=/dev/block/platform/soc/7824900.sdhci/by-name/boot;
is_slot_device=auto;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;

#Remove Old Modules
rm -rf /system/lib/modules
rm -rf /vendor/lib/modules

#Install Magisk Module For Modules
rm -rf /data/adb/modules/autoinsmod
cp -rf /tmp/anykernel/tools/autoinsmod /data/adb/modules/autoinsmod

write_boot;
## end boot install
