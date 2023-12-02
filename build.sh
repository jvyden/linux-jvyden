#!/bin/bash

cd $(dirname $0)/linux

make -j$(nproc)

sudo -v || exit 1

sudo make modules_install
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-linux-jvyden
sudo grub-mkconfig -o /boot/grub/grub.cfg
