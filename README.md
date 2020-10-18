# Hardened Gentoo on ZFS:

Tired of go on a lot of link each time, i decided of all regroup in a massive tutorial.  
This howto is a mix between the [gentoo handbook](https://wiki.gentoo.org/wiki/Handbook:AMD64), [sasaki handbook](https://wiki.gentoo.org/wiki/Sakaki%27s_EFI_Install_Guide) and many tips found on the web.  
We going to look how to set up:

+ ZFS
+ Systemd
+ systemd-boot
+ CPU flags
+ The kernel source
+ Full disk encryption
+ Secure Boot (generate key with [cryptboot](https://github.com/xmikos/cryptboot))
+ Protect your privacy ( paranoid-ninja, tor and ssh )
+ SELinux (Not Yet Ready)

## System Requirements

* Cpu comptatible x86-64.
* 8G disk storage available
* 2G memory minimum
    
**Optional:**

* MicroSD or USB key for create an external boot partition. ( Be proud with MicroSD as boot partition, some BIOS/UEFI cannot boot on )
* ECC Memory.
* SSD - Generally use as cache drive and log device, respectively called L2ARC and ZIL).  

### Build the ISO
Take a look on another repo [Archaeidae](https://github.com/szorfein/archaeidae) to build a custom Archiso including ZFS support.
<!--
:arrow_forward: [archlinux-zfs.iso](https://transfer.sh/14Z4KX/archlinux-2019.02.05-x86_64.iso)  
:arrow_forward: [archlinux-zfs.sig](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/archlinux-2019.02.05-x86_64.iso.sig)  

**Checksums:**

    md5: b4e329bc09644f947dcef52ad350d162 
    sha1: e072261a5470afe8db0d1ab7e2929587f8c603cd

**Gpg:**

    $ wget https://raw.githubusercontent.com/szorfein/dotfiles/master/szorfein.gpg
    $ gpg --recv-key szorfein.gpg
    $ gpg --verify archlinux-2019.02.05-x86_64.iso.sig

```txt
gpg: assuming signed data in 'archlinux-ZFS-2019.01.25-x86_64.iso'
gpg: Signature made Sat 26 Jan 2019 04:18:55 AM +07
gpg:                using EDDSA key 8E3785DE31AAE73F98098744FD696BDDAA8FDC50
gpg: Good signature from "szorfein <szorfein@protonmail.com>" [ultimate]
Primary key fingerprint: B5D8 FFD0 D7F1 FB6A 4350  5E31 9CC9 729A 2E36 9CB3
     Subkey fingerprint: 8E37 85DE 31AA E73F 9809  8744 FD69 6BDD AA8F DC50
```
-->

**Boot on the key & start the tutorial:**  
[Gentoo-ZFS wiki](https://github.com/szorfein/Gentoo-ZFS/wiki)  
