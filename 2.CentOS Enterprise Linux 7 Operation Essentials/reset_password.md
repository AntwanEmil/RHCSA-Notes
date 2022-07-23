# THE BOOT PROCESS

### Managing GRUB recovery

- Enable recovery mood in grub 
  - press e .
  - login as root
  - nano /etc/default/grub
  - GRUB_DISABLE_RECOVERY="false" <--- save and clos
  - update grub2
  - It will create entry for recovery mode :) 

### Recover Lost Root Passwords

- e to edit in grub
- goto line 16 
- add "rd.break enforcing=0"
- press ctrl+x
- switch_root:/# mount -o remount,rw /sysroot
- switch_root:/# chroot /sysroot
- ​    zsd# passwd
- new password: **********
- then exit
- switch_root:/# mount -o remount,ro /sysroot
- exit

SE LINUX commands 

- restorecon /etc/shadow

- setenforce 1

  خلاص كده 