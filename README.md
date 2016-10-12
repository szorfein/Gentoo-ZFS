# Gentoo-ZFS
Wiki for install a root ZFS system on gentoo, with systemd, grsec, hardened system, UEFI or old BIOS.

You will need download an archlinux with ZFS support, it's work perfectly.

archiso with ZFS support and custom script on [dropcanvas](http://dropcanvas.com/0hr5c)

Signature:

sha1sum : b4c685f75bfbff38db71ff2956e194e4909708b8  
sha256sum: b1dcc5613c9d4504459f0121e8c1f92cf54f3ce3f52d31625a02e2ed3bfa5795

## install it on USB key (1G is good):  

    # dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

## Extra tools include in ISO:

    duplicity
    ecryptfs-utils
    w3m
    git
    privoxy
    tor
    tmux - screen
    zfs - You must install the same version into gentoo for grub.

Start process with:  
[Gentoo-ZFS install](https://github.com/szorfein/Gentoo-ZFS/wiki/zfs-install-version-without-any-explain)  
