# Hardened Gentoo on ZFS:

Tired of go on a lot of link each time, i decided of all regroup in a massive tutorial.
I will mainly use these tools:

+ ZFS
+ Systemd
+ Mkinitramfs-ll
+ Grub
+ Cryptsetup (optional)
+ AppArmor (optional) (Not Yet Ready)
+ SELinux (optional) (Not Yet Ready)

I have try to regroup all install case (BIOS, UEFI, boot on external support, RAID, LUKS...) only for x86_64 architecture.

About iso, i have choose to create an [archiso](https://wiki.archlinux.org/index.php/Archiso) because it easy for integrate custom script, activate some service, etc... and no problem for install gentoo or an another system.

## System Requirements

* Cpu comptatible x86-64.
* 8G disk storage available
* 2G memory minimum
    
**Optional:**

* MicroSD or USB key for create an external boot partition. ( Be proud with MicroSD as boot partition, some BIOS/UEFI cannot boot on )
* ECC Memory.
* SSD - Generally use as cache drive and log device, respectively called L2ARC and ZIL).  

### Download iso:

Because i upload file on [transfer.sh](https://transfer.sh), the link is available only 14 days.  
If the link is no longer available and you're tired of wait, you can create your own iso by follow this [HOWTO](https://szorfein.github.io/zfs/make-your-own-archiso-with-ZFS/).

:arrow_forward: [archlinux-zfs.iso](https://transfer.sh/tgmDq/archlinux-2019.01.25-x86_64.iso)  
:arrow_forward: [archlinux-zfs.sig](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/archlinux-ZFS-2019.01.25-x86_64.iso.sig)  
:arrow_forward: [szorfein.gpg](https://raw.githubusercontent.com/szorfein/dotfiles/master/szorfein.gpg)

**Checksums:**

    md5: 47fd2ac2064455ffa527253bf6158c8a  
    sha1: 2afd2b7e7982fa2894ea0a55ec9eca9c5d42995a  

**Gpg:**

    $ wget https://raw.githubusercontent.com/szorfein/dotfiles/master/szorfein.gpg
    $ gpg --recv-key szorfein.gpg
    $ gpg --verify archlinux-2018.05.10-x86_64.iso.sig

```txt
gpg: assuming signed data in 'archlinux-ZFS-2019.01.25-x86_64.iso'
gpg: Signature made Sat 26 Jan 2019 04:18:55 AM +07
gpg:                using EDDSA key 8E3785DE31AAE73F98098744FD696BDDAA8FDC50
gpg: Good signature from "szorfein <szorfein@protonmail.com>" [ultimate]
Primary key fingerprint: B5D8 FFD0 D7F1 FB6A 4350  5E31 9CC9 729A 2E36 9CB3
     Subkey fingerprint: 8E37 85DE 31AA E73F 9809  8744 FD69 6BDD AA8F DC50
```

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
* sshuttle

**Boot on the key & start the tutorial:**  
[Gentoo-ZFS wiki](https://github.com/szorfein/Gentoo-ZFS/wiki)  

### Trouble

If you found any problem about this wiki, thx, report an issue.  
