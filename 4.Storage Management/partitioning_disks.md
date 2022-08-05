## fdisk
Works with MBR.
`fdisk -l /dev/sdb`  list partitions of sdb
`fdisk /dev/sdb`  to enter the menu
0x83 -> linux filesystem partition
0x82 -> swap partition
## gdisk
Used to create partition table that supports GPT.
`gdisk /dev/sdb` to enter the menu
0x8300 -> Linux filesystem partition
0x8200 ->swap partition
`gdisk -l /dev/sdb` to show partitions inside sdb.
## parted
- Works with MBR & GPT, also can take scripts.
`parted /dev/sdb print` to show sdb partitions
`parted` enter the menu
	`select /dev/sdb`
	`mklabel [msdos/gpt]`
	`mkpart primary 1 200`  start from 1 to 200 MB
	`mkpart extended 201 -1` start from 201 to the last MB of the disk
	`mkpart logical 202 300` start from 202 to 300
### Scripting partitions
refer to `part.sh` file.