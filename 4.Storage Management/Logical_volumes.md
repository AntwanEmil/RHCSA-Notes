## Creating LVMs
`vgscan` to see what kind of volume group you have
`vgs` more info than vgscan :)
`lvscan` to see lvms (ACTIVE/INACTIVE onens)
`pvcreate /dev/sdb10`   -> to create physical volume
`vgcreate vg1 /dev/sdb10 /dev/sdb11` add sdb10&sdb11 to volume group vg1

`lvcreate -n lv1 -L 184m vg1` -> create logical volume in vg1 

#### creating filesystem
`mkfs.xfs /dev/vg1/lv1` make lv1 as xfs filesys
___________

`df -h` to see space used and available
`df -h /lvm` for the /lvm direc only

## Resize Logical Volumes
`lvextend -L +50m /dev/vg1/lv1` -> increase size by 50mb
`xfs_growfs /lvm` to resize the filesystem (NB: lvm is the place where lv1 is mounted on the filesystem)

## LVM Snapshots for Backups
`lvcreate -L 30mm -s -n backup /dev/vg1/lv1` create vol named backup
then `mount /dev/vg1/backup /mnt -o nouuid,ro` ro=readonly

## Migrate PVs (physical volumes)
`pvmove /dev/sdb10 /dev/sdc5` moving sdb10 to sdc5  (we can background the process with -b)
`vgreduce vg1 /dev/sdb10` to remove sdb10 volume from vg1
`pvremove /dev/sdb10`  to remove header info of sdb10

