#!/bin/bash
#CROSS_TOOLCHAINS_DIR=/usr/local/bin/hndtools-arm-linux-2.6.36-uclibc-4.5.3
CROSS_TOOLCHAINS_DIR=`pwd`/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3
export PATH=$CROSS_TOOLCHAINS_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CROSS_TOOLCHAINS_DIR/lib
#export autom4te_perllibdir=$CROSS_TOOLCHAINS_DIR/share/autoconf
#export perllibdir=$CROSS_TOOLCHAINS_DIR/share/automake-1.11
 
#export pkgdatadir=$CROSS_TOOLCHAINS_DIR/share/libtool
#export pkgltdldir=$CROSS_TOOLCHAINS_DIR/share/libtool
#export aclocaldir=$CROSS_TOOLCHAINS_DIR/share/aclocal
 
#ln -s $CROSS_TOOLCHAINS_DIR /projects/hnd/tools/linux/
#ln -s $CROSS_TOOLCHAINS_DIR /opt/brcm-arm
 
#sudo chown -R janson:janson .
#make clean
 
 
#make LINUX_VERSION=2_6_36 PLT=arm ARCH=arm BUILD_MFG=0 all
#sudo env PATH=$PATH;env LD_LIBRARY_PATH=$LD_LIBRARY_PATH;make LINUX_VERSION=2_6_36 PLT=arm ARCH=arm BUILD_MFG=0 install

#ctools/objcopy -O binary -R .note -R .note.gnu.build-id -R .comment -S /projects/asuswrt-merlin/release/src-rt-6.x.4708/linux/linux-2.6/vmlinux ctools/piggy
#ctools/lzma_4k e ctools/piggy  ctools/vmlinuz-lzma
#ctools/mksquashfs /projects/asuswrt-merlin/release/src-rt-6.x.4708/router/arm-uclibc/target ctools/target.squashfs -noappend -all-root
#ctools/trx -o image/linux-lzma.trx ctools/vmlinuz-lzma ctools/target.squashfs
#ctools/trx_asus -i image/linux-lzma.trx -r RT-AC56U,3.0.0.4,image/RT-AC56U_3.0.0.4_376.45_alpha1.trx
#mkimg_xl -t 0 -v V1.5.0096 -p RS1403 -b unknown -i ./image/RT-AC56U_3.0.0.4_376.45_alpha1.trx  -o /tftpboot/linux.img
