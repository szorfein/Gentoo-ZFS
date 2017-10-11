# Hardened Gentoo on ZFS:

Tired of go on a lot of link each time, i decided of all regroup in a massive tutorial.
I will mainly use these tools:

+ ZFS
+ Systemd
+ Grsecurity
+ Mkinitramfs-ll
+ Grub
+ SELinux
+ Cryptsetup

I have try to regroup all install case (BIOS, UEFI, boot on external support, RAID, LUKS...) only for x86_64 architecture.

About iso, i have choose to create an [archiso](https://wiki.archlinux.org/index.php/Archiso) because it easy for integrate custom script, activate some service, etc... and no problem for install gentoo or an another system.

## System Requirements

* Cpu comptatible x86-64.
* 8G disk storage available
* 2G memory minimum
    
**Optional:**

* MicroSD or USB key for create an external boot partition.
* ECC Memory.
* SSD (used as cache drive, named L2ARC).

### Download iso:

Because i upload file on [transfer.sh](https://transfer.sh), the link is available only 14 days.  
If the link is no longer available and i'm still alive, i would upload new link soon, don't worry :).

:arrow_forward: [archlinux-zfs](https://transfer.sh/P1nmZ/archlinux-ZFS-2017.09.16-x86_64.iso)  
:arrow_forward: [archlinux-zfs.asc](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/archlinux-ZFS-2017.09.16-x86_64.iso.asc)  
:arrow_forward: [szorfein.gpg](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/szorfein.gpg)

**Checksums:**

    md5: be197fdced762bddeec4ba64726ff550  
    sha1: 0b188a2af4436ba37ba200c97c88ebe698017aca  

**Gpg:**

    $ gpg --recv-key szorfein.gpg
    $ gpg --verify archlinux-ZFS-2017.09.16-x86_64.iso.asc
    gpg: assuming signed data in 'archlinux-ZFS-2017.09.16-x86_64.iso'
    gpg: Signature made Sat Sep 16 19:27:10 2017 CEST
    gpg:                using RSA key 6485CD4AD55FC2F767EE783597FB6CECA17FF364
    gpg: Good signature from "Szorfein <szorfein@gmail.com>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: 346E BDED 037B 1949 013D  3576 0F15 D984 5548 7B76
         Subkey fingerprint: 6485 CD4A D55F C2F7 67EE  7835 97FB 6CEC A17F F364

## Install iso on USB key. For window, use tools like [rufus](https://rufus.akeo.ie/):  

    # dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

## Extra tools include in ISO:

* duplicity - clonezilla
* ecryptfs-utils - cryptsetup
* vim - nano - vi
* mc - ranger
* w3m - links - lynx - elinks
* git
* privoxy - tor - proxychains
* tmux - screen
* zfs-0.7.1 - You must install the same version else grub complains about probe filesystem...

**Boot on the key & start the tutorial:**  
[Gentoo-ZFS wiki](https://github.com/szorfein/Gentoo-ZFS/wiki)  

### Trouble

If you found any problem about this wiki, thx, report an issue.  
