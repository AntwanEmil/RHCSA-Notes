#!/bin/bash
DISK="/dev/sdb"
# Create MBR partition table and extended partition across disk
parted -s $DISK -- mklabel msdos mkpart extended 1m -1m

#Create swap partition as partition 5 the first logical parition
parted -s $DISK mkpart logical linux-swap 2m 100m #5

parted -s $DISK mkpart logical 101m 200m #6
parted -s $DISK mkpart logical 201m 300m #7
parted -s $DISK mkpart logical 301m 400m #8
parted -s $DISK mkpart logical 401m 500m #9

#Create 3 more logical partitons for LVMs
parted -s $DISK mkpart logical 501m 600m #10
parted -s $DISK mkpart logical 601m 700m #11
parted -s $DISK mkpart logical 701m 800m #12
parted -s $DISK set 10 lvm on # set partition 10 to LVM
parted -s $DISK set 11 lvm on # set partion 11 to LVM
parted -s $DISK set 12 lvm on # set partition 12 to LVM

#Create 2 more partions for RAID
parted -s $DISK mkpart logical 801m 900m #13
parted -s $DISK mkpart logical 901m 1000m #14
parted -s $DISK set 13 raid on # set partition 13 to RAID
parted -s $DISK set 14 raid on # set partion 14 to RAID
parted -s $DISK print
