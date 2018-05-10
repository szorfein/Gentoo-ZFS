# Hardened Gentoo on ZFS:

Tired of go on a lot of link each time, i decided of all regroup in a massive tutorial.
I will mainly use these tools:

+ ZFS
+ Systemd
+ Grsecurity
+ Mkinitramfs-ll
+ Grub
+ SELinux (optional)
+ Cryptsetup (optional)

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

:arrow_forward: [archlinux-zfs](https://transfer.sh/w0u9a/archlinux-2018.05.10-x86_64.iso)  
:arrow_forward: [archlinux-zfs.sig](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/archlinux-2018.05.10-x86_64.iso.sig)  
:arrow_forward: [szorfein-last-key.gpg](https://raw.githubusercontent.com/szorfein/Gentoo-ZFS/master/szorfein-last-key.gpg)

**Checksums:**

    md5: 454d1691fa3f0096fb7a27555630489f  
    sha1: fdb91bbb10d1d203614185d8a380569ec5eb6698  

**Gpg:**

    $ gpg --recv-key szorfein-last-key.gpg
    $ gpg --verify archlinux-2018.05.10-x86_64.iso.sig
    gpg: assuming signed data in 'archlinux-2018.05.10-x86_64.iso'
    gpg: Signature made Thu May 10 11:07:45 2018 CEST
    gpg:                using EDDSA key A81BA6E0A83E4C5E33ABB9B5A38E87A284B87751 
    gpg: Good signature from "Szorfein <szorfein@gmail.com>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: 91D1 6ADF CDDD 7959 E25F  2164 8838 FC91 D890 EB06
         Subkey fingerprint: A81B A6E0 A83E 4C5E 33AB  B9B5 A38E 87A2 84B8 7754

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
* zfs-0.7.8 - You must install the same version else grub complains about probe filesystem...

**Boot on the key & start the tutorial:**  
[Gentoo-ZFS wiki](https://github.com/szorfein/Gentoo-ZFS/wiki)  

### Trouble

If you found any problem about this wiki, thx, report an issue.  
