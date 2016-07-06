# Gentoo-ZFS
Wiki for install a root ZFS system on gentoo, with systemd, grsec, hardened system, UEFI or old BIOS.

You will need download an archlinux with ZFS support, it's work perfectly.

archiso with ZFS support and custom script on [dropcanvas](http://dropcanvas.com/o1unb)

signature:

sha1sum : b4c685f75bfbff38db71ff2956e194e4909708b8  
sha256sum: b1dcc5613c9d4504459f0121e8c1f92cf54f3ce3f52d31625a02e2ed3bfa5795

## install on USB key: (from [archlinux](https://archlinux.org))

    # dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

Version of ZFS is : 0.6.5.7.  
You must install the same version for grub detect the good filesystem.


Start process with:  
[Gentoo-Install](https://github.com/szorfein/Gentoo-ZFS/wiki/zfs-install-in-unique-page)
