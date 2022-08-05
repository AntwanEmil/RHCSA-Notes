## Create & manage Swap Space
`mkswap /dev/sdb5` -> 
`swapon -s` swap summary of all partitions 
`swapon /dev/sdb5` to add the sdb5 swap space  (check with the prev command again)
priotity of -1 is higher than -2 so it'll be utilized first.
`swapoff /dev/sdb5` to remove sdb5 from swap partitions. 
`swapoff -a` swapoff of all

## Configure RAID Partitions
RAID: Reduntant Array of Inexpensive Disks.
- ususally used to create fault tolerance arrays.
- createds dev mapper virtual device file.
- RAID Levels
	- Linear: partitions not of the same size.
	- RAID0: partitions of the same size.
	- RAID1: mirror data between devices of same size.
	- RAID4/5/6: Three or more devices. (stripping with parity).

`mdadm --create --verbose /dev/md0 --level=mirror --raid-devices=2 /dev/sdb13 /dev/sdb14`
level=mirror -> raid1
`lsmod | grep raid`  -> to see what type of raid loaded
`mdadm --stop /dev/md0` -> to stop raid

