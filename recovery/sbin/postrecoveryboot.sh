#!/sbin/sh
List=`cat /proc/app_info|grep charge_flag -A1`
set -- $List
if [ x$2 = "x1" ]
then
   mount -o ro -t ext4 /dev/block/mmcblk0p12 /system 
   /sbin/charge
fi