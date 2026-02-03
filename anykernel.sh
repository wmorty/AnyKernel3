### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=miumiu kernel 4 pixel 7a, 7 and 7 pro
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=cheetah
device.name2=panther
device.name3=lynx
supported.versions=16
supported.patchlevels=
'; } # end properties

# boot image installation
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;

# vendor_kernel_boot installation (for dtb)
block=vendor_kernel_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;
