**XRDP (Remote Desktop Protocol): gui envinlinux is run by X server ... this then gves us xrd for the x serer Remote Desktop protocol. 

## installation

check you have epel-release repo : `yum list  epel-release`
`yum list xrdp`

config in /etc/xrdp -> startwm.sh

## RDP Keymap Files
change the keymap from us-english to uk-english :)

cd /etc/xrdp
`setxkbmap -layout gb`  -> the kind of  keyboard layout 
`xrdp-genkeymap km-0809.ini`  0809 for UK kemap :)

