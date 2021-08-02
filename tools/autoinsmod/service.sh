#!/system/bin/sh

for module in $(find /system -name *.ko)
do insmod $module
done
