PC -> CUPS server -> Printer
CUPS: Common Unix Printing System
## Install CUPS
`yum install cups`
`systemctl start cups && systemctl enable cups`
IPP port: 631

## Configure Web Interface
`vim /etc/cups/cupsd.conf`
then
	DefaultEncryption Never
	Listen <IP>:631
	allow <IP/24>

then restart cups service

