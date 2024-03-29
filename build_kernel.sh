#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.6/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8926-sec_afyonltecan_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage