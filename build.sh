#!/bin/sh

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

mkdir -p build

export CFLAGS="-Wno-error=sizeof-pointer-memaccess"

make O=build rk3308-novotech-demo_linux_defconfig
make O=build rk3308-novotech-demo-emmc.img
