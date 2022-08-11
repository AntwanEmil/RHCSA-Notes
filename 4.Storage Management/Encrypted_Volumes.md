**LUKS** : Linux unified key setup

## Add Logical Volume and Shred
Create any logical vol
`lvcreate -L 60m -n enc vg1`
shredding the logical vol
`shred -v --iterations=1 /dev/vg1/enc` to make sure we can't see were data is and were data isn't (it writes random data).

## LUKS Suport and Encryption
to check for ACL support: 
	`grep -i ACL /boot/config-$(uname -r)`
	IF you saw ACL=y
	`grep -i DM_CRYPT /boot/c.....`
	IF you saw CONFIG_DM_CRYPT=m  (maybe :(  )
		`lsmod | grep dm_crypt`
		IF you saw nothing then : `modprobe dm_crypt` to load the module

check for cryptsetup:
`yum update cryptsetup` to update for the latest version
_____________
`cryptsetup -y luksFormat /dev/vg1/enc` to encrypt /enc

to see all the options: `cryptse luksDump ....`
options : (cipher mode ... Hash spec.... Payload offset .....)

`cryptsetup isLuks /dev/vg1/enc` to check if encrypted or not
then `echo $?` if (0) then enc if (1) then not encrypted.



## Open and Format luksDevice
now we want to add file system to luksDevice

`cryptsetup luksOpen /dev/vg1/enc enc_vol`
then goto /dev/mapper and search for 'enc_vol' mapper
`mkfs.xfs /dev/mapper/enc_vol` to make xfs file system

## Mounting at Boot
`cryptsetup luksClose enc_vol` to de-assign the name enc_vol
0. Get the UUID of the volume using `blkid`
1. add this line to /etc/crypttab  `enc_volume UUID="d71375-557d-ads4-ad4s"`
2. add this line for auto mounting in etc/fstab `dav/mapper/enc_vol /enc_vol xfs defaults 0 0`
3. create directory `mkdir /enc_vol`
4. check by luksClose then luksOpen with the /enc_vol 
5. `mount` to check /dev/mapper/enc_vol 
