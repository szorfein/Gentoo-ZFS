# Gentoo-ZFS
Wiki for install a root ZFS system on gentoo, with systemd, grsec, hardened system, UEFI or old BIOS.

You will need download an archlinux with ZFS support, it's work perfectly.

***Actually, iso do not contain all scripts for install gentoo faster, it just ontain ZFS, i need time for test and test again..., compile time is extremly long on my low system. but SOON i hope )***

Archiso with ZFS support on [dropcanvas](http://dropcanvas.com/0hr5c)

**Signature:**

sha1sum : b4c685f75bfbff38db71ff2956e194e4909708b8  
sha256sum: b1dcc5613c9d4504459f0121e8c1f92cf54f3ce3f52d31625a02e2ed3bfa5795

## System Requirements
* Cpu comptatible x86-64.
* 8G disk storage available
* 2G memory minimum
    
**Optional:**
* MicroSD or USB key for create external boot partition, zfs have better performance if you create pool using whole disks.
* ECC Memory.

## Install iso on USB key. For window, use tools like [rufus](https://rufus.akeo.ie/):  

    # dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

## Extra tools include in ISO:
* duplicity - clonezilla
* ecryptfs-utils - cryptsetup
* vim - nano - vi
* mc - ranger
* w3m - links - lynx
* git
* privoxy - tor - proxychains
* tmux - screen
* zfs-0.6.5.8 - You must install the same version into gentoo else grub complain about probe filesystem...

**Start process with:**  
[Gentoo-ZFS install](https://github.com/szorfein/Gentoo-ZFS/wiki/gentoo-zfs)  
