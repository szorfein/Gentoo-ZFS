# Hardened Gentoo on ZFS:
Tired of go on a lot of link each time, i decided of all regroup in one page.  
I will use this tools:
* systemd
* zfs
* grsecurity path
* mkinitramfs-ll
* grub

I have try to regroup all install case (BIOS, UEFI, boot on external support, RAID, LUKS...) onlyt for x86_64 architecture.

About iso, i have choose to create an [archiso](https://wiki.archlinux.org/index.php/Archiso) because it easy for integrate custom script, activate some service, etc...

**New Archiso with ZFS support:**
:arrow_forward: **[lastest iso on transfer](https://transfer.sh/prYS4/archlinux-2016.10.26-x86_64.iso)**

**Checksum:**

    sha1sum : a32a9e51081c5608a2b8a7cd264cf29a6659b424
    sha256sum: 3d21f0c848a7a30a3d291172c9fd529cd746ac55604a7f9c86e16f19f0597a5a
    sha512sum: cd466a992dab3610174e5c11da79033bee2dfbec93314c78de7892c71293426ed76601e3f6acdec2831c1c60d9e74162f34c657106fc2ffef3881c333c156e8e

**Signature gpg:**

:arrow_forward: **[archiso](https://transfer.sh/prYS4/archlinux-2016.10.26-x86_64.iso)**
:arrow_forward: **[asc_file](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/archlinux-2016.10.26-x86_64.iso.asc)**

    $ gpg --recv-key 0x63CBFF51DD6C3FA6 --keyserver hkps.pool.sks-keyservers.net
    $ gpg --verify archlinux-2016-10.26-x86_64.iso.asc
    gpg: assuming signed data in 'archlinux-2016.10.26-x86_64.iso'
    gpg: Signature made Wed Oct 26 10:53:06 2016 CEST
    gpg:                using RSA key 0x41F8A185038B721C
    gpg: Good signature from "Szorfein <szorfein@gmail.com>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: A691 553E FF1E 4654 16E3  038D 63CB FF51 DD6C 3FA6
         Subkey fingerprint: E7EA 8EC9 69B7 9A4D 6944  4F4C 41F8 A185 038B 721C

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
* w3m - links - lynx - elinks
* git
* privoxy - tor - proxychains
* tmux - screen
* zfs-0.6.5.8 - You must install the same version into gentoo else grub complain about probe filesystem...

**Start process with:**  
[Gentoo-ZFS install](https://github.com/szorfein/Gentoo-ZFS/wiki/gentoo-zfs)  
