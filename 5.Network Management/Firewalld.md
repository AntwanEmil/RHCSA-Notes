`firewall-cmd --state ` check firewall state
`systemctl start firewalld.service`  start firewall service

`firewall-cmd --get-zones` (external and inteernal zone)
`firewall-cmd --list-all` to see all interfaces

## Custom Services
remove old services
`firewall-cmd --list-services --zone=internal`
`firewall-cmd --remove-service={dhcbv6-client,mdns,samba-client} --zone=internal --permanent`
add new services
`firewall-cmd --add-service={high-availability,http} --zone-internal --permanent`

reload 
`firewall-cmd --reload`


### Add our Own Services
`firewall-cmd --permanent --new-service="puppet"`
goto /etc/firewalld/services/
then `restorecon puppet.xml && chmod 640 puppet.xml`
then `vi puppet.xml` and add new line 
	\<short\> Puppet \</short\>
	\<port protocol="tcp" port="443"\>

then `firewall-cmd --permanent --add-service=puppet --zone=internal`
and `firewall-cmd --reload`

