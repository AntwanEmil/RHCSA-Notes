## SELinux Modes
1. Enforcing Mode
2. Permissive: violations logged only
3. Disabled

## Reading and Changing Modes

### Reading
`getenforce` or `sestatus` to see the current mode
sestatus gives a lot more info (SELinux root directory  .. mount ... )

config reside in `/etc/selinx/config`
____________________________________
### Changing
should be ROOT user to do this :)
`setenforce 0`  when rebooting it'll change
0-> permissive
1-> enforce

to change it permanently goto `vim /etc/selinux/config`

How to disable it from setenforce ???? we CANT :(
			just from the config file and rebooting :-


## Preventing runtime Change to SELinux  Mode
`setsebool secure_mode_policyload on -p` -p for persistent
to check the boolean value :: `semanage boolean -l | grep secure_mode_policyload`



## Recovering Root Pass on SELinux Systems
passwords are stored in /etc/shadow

chcon ---- restorecon           to undo chcon user restorecon :L

### Resetting the Root Password
1. Boot into GRUB and add "rd.break" as a kernel option
2. System Boot will stop at RAM Disk .(emergency mode).. set /sysroot to rw and chroot to /sysroot directory -> `mount -o remount,rw /sysroot` and `chroot /sysroot` then `passwd`  to change the password.
3. After Setting the root password,  `touch /.autorelabel` .... exit the chroot and exit rd.break to reboot
_________________
**Faster Method
1. same
2. same
3. `load_policy -i` then `restorecon -v /etc/shadow` then exit twice







