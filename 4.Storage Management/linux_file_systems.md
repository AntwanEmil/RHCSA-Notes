## EXT4 File System
`mkfs.ext4 -L DATA /dev/sdb6` -> labelled as DATA
`tune2fs -L MYDATA -c 0 -i 0 /dev/sdb6`  -> change options


## XFS File System
default for centos7
`mkfs.xfs -b size=1k -l size=10m /dev/sdb7`
size here is block size            size here is log file size

`xfs_db -x/dev/sdb7` enter xfs expert mode 

## Mounting EXT4

`mount -o remount,noexec /dev/sdb /mnt` mounting /dev/sdb to /mnt
`umount /mnt`
 `vi /etc/fstab`  -> add the 'UUID="asddsa-asdas5ad" /data/mydata ext4 noexec 0 2' to the end of the file
	 then `mount -a`
## Mounting XFS
  `blkid /dev/sdb7`   -> shows the UUID
  `vi /etc/fstab`  -> add the 'UUID="asddsa-asdas5ad" /data/data2 xfs defaults 0 0' to the end of the file.  then `mount -a`
