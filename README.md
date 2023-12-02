# linux-jvyden

My personal kernel configuration for my x86 Arch Linux machines, this probably won't work with your computer. It's really only here for my own safe-keeping.

Currently based off of Linux/x86 v6.6.0 mainline (torvalds/linux from git.kernel.org)

Configured to build drivers and common system components directly into the kernel, skipping module loading for faster loading and easy system recovery incase you lose your kernel modules folder.
It works with NVIDIA proprietary drivers, QEMU, systemd, and should also work with Docker.
