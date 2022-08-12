`iptables -L`
to show all the targets and protocols 
______________
`iptables -A INPUT -i lo -j ACCEPT`
-A append 
-i  interface
lo local
-j  jump to
________________
`iptabels -A INPUT -m contrack --ctstate ESTABLSIHED,RELATED -j ACCEPT`
make sure if we establish connection the traffic will be allowed to come back in.

`iptables -A INPUT -p tcp --dport 22 -J ACCEPT`
allow port 22 traffic into our system

______________
`iptables -F` flush all the rules

