# Gentoo-ZFS
Wiki for install a root ZFS system on gentoo, with systemd, grsec, hardened system, UEFI or old BIOS.

You will need download an archlinux with ZFS support, it's work perfectly.

Archiso with ZFS support and custom script on [dropcanvas](http://dropcanvas.com/0hr5c)

**Signature:**

sha1sum : b4c685f75bfbff38db71ff2956e194e4909708b8  
sha256sum: b1dcc5613c9d4504459f0121e8c1f92cf54f3ce3f52d31625a02e2ed3bfa5795

## System Requirements
* Cpu comptatible x86-64.
* 8G disk storage available
* 2G memory minimum
    
**Optional:**
* MicroSD or USB key for create /boot partition, zfs have better performance if you create pool using whole disks.
* ECC Memory.

## Install iso on USB key. For window, use tools like [rufus](https://rufus.akeo.ie/):  

    # dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

## Extra tools include in ISO:
* duplicity
* ecryptfs-utils
* w3m
* git
* privoxy
* tor
* tmux - screen
* zfs-0.6.5.8 - You must install the same version into gentoo else grub complain about probe filesystem...
* zfs-0.6.5.8 compatible with >=kernel-4.4 

**Start process with:**  
[Gentoo-ZFS install](https://github.com/szorfein/Gentoo-ZFS/wiki/gentoo-zfs)  
