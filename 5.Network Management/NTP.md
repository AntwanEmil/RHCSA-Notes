the network time protocol
used to sync time using other network peers
ntpd :ntp deamon .. the default time server now on RHEL7 and CENTOS7 is Chrony.

`date --set="20220801 12:01"` to set the time to some value. (HWclock wont change so we need to `hwclock --systohc` to get time from sys to HW)
to synch our HW clock with external server`hwclock --hctosys` 

## Timdatectl
gives local time, universal time, RTC time time zone, .... and more
changes HW clock and memory clock at the same time
`timedatectl set-time "2022-08-01 13:11:00"` 
to disable time synch : `timedatectl set-ntp false`

## Chrony
`yum install -y chrony`
`vim /etc/chrony.conf`
`systemctl start chronyd`

## NTPD
/etc/ntp.conf
`ntpq -p` to show servers and poll time (default is 64 seconds then the poll be 128 sec)


