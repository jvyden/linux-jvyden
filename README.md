# linux-jvyden

My personal kernel configuration for my x86 Arch Linux machines, this probably won't work with your computer. It's really only here for my own safe-keeping.

Currently based off of Linux/x86 v6.6.0 mainline (torvalds/linux from git.kernel.org)

Configured to build drivers and common system components directly into the kernel, skipping module loading for faster loading and easy system recovery incase you lose your kernel modules folder.
It works with NVIDIA proprietary drivers, QEMU, systemd, and should also work with Docker.

## Building

1. `git clone --recursive https://github.com/jvyden/linux-jvyden`
2. `cd linux-jvyden/`
3. `chmod +x ./build.sh`
4. `./build.sh`
5. Run DKMS if needed. Not documented here as I haven't figured it out myself exactly. https://wiki.archlinux.org/title/Dynamic_Kernel_Module_Support
6. Copy the mkinitcpio configuration: `sudo cp -v mkinitcpio.d/linux-jvyden.preset /etc/mkinitcpio.d/`
7. Build the initramfs: `sudo mkinitcpio -p linux-jvyden`
8. Remake grub config: `sudo grub-mkconfig -o /boot/grub/grub.cfg`
