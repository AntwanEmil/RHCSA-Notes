
## Display Routes
`ip route show` to show the route
`route` display the route table
`netstat -r` also the route table
`netstat -rn` to dipslay link_local ip (169.1)

## Add Route
`ip route add default vi 192.168.1.20` but this is not persistent

How to make it persistnent ?? :~ 
`vim /etc/sysconfig/network-scripts/ifcfg-ens33` and set the 
	DEFAULTROUTE="yes"
	GATEWAY="192.168.1.20"   # to add new route

## Enable Routing
you are now routing 
`vi /etc/sysctl.conf` 
	insert newline -> net.ipv4.ip_forward=1
check using `sysctl -p` 

## Enable NAT

`iptables -t nat -A POSTROUTING -o ens33 -j MASQUERADE`
