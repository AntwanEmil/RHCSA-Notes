`ip -4 addr` only v4

## NetworkManager
`nmcli connection show` to list our connections
`nmcli connection add con-name HOME ifname enp0s3 type ethernet ip4 192.168.0.22 gw4 192.168.0.1` add new connection called HOME

`nmcli con up/down enp0s3`

## Network Config Files
cd /etc/sysconfig/network-scripts/
~ NM_CONTROLLED=no ~


