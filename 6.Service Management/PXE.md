Pre-boot Execution Environment

*Syslinux*: provides: 
								- SYSLINUX: Boot from FAT
								- PXELINUX: Network Boot
								- ISOLINUXL Boot from cd-rom
								- EXTLINUX: boot from EXT  file system

## Inst
`yum install -y tftp tftp-server syslinux`

## Conifugre DHCP & TFTP Servers
`vim /etc/dhcp/dhcpd.conf`

go to /var/lib/tftpboot
`cp /usr/share/syslinux/pxelinux.0 .`
`cp /usr/share/syslinux/menu.c32 .
copy linux iso files
`cp /var/ftp/pub/centos72/isolinux/vmlinuz .`
`cp /var/ftp/pub/centos72/isolinux/initrd.img .`

start tftp socket
`systemctl start tftp.socket && systemctl enable tftp.socket`
TFTP Server port 69
DHCP Server port: 67

## PXELINUX Conifg
go to: /var/lib/tftboot/pxelinux.cfg/
