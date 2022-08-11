auto mounting using autofs

## Installing
`yum list available | grep autofs` 
then install the needed pckgs: `yum install autofs` (if needed)

configs is in /etc/autofs.conf, /etc/auto.master

start service `systemctl start autofs`
the /misc direc is created 

## Auto-Mount Encrypted Partition
using autofs
`cryptsetup luksClose enc_vol`
`vi /etc/auto.misc` 