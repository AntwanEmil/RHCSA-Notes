
Type Enforcement : type of the source domain and the target should be the same .
`yum install policycoreutils policycoreutils-devel setools-console httpd attr`
## SELinux Label and Type

list http processes : `ps -Z -p $(pgrep http)`
`ls -Zd /var/www/html` -Zd to see selinux label for directory

to read attribute only : `getfattr -n security.selinux /var/www/html` getting the 'security.selinux' attr.
_____________
### Allow Rules
search:  `sesearch --allow -s httpd_t -t httpd_sys_content_t`


## Configuring Custome Web-Server Directories
''''''semanage-fcontext'''''
`semanage fcontext -a -t httpd_sys_content_t "/repos(/.*)?"` 

## Configuring Custom Web-Server Ports
port will also have a target type that must be matched within an allow rule (just like files)

- `seinfo --portcon 80` to see whats associated with port80
- `semanage port -l` to see all ports defined 
- `semanage port -l | grep http_port_t` ports allowed for http (80,81,443,488,8008,8009,8443,,,,,)

- #### To add a new port to http pool of ports
    1.  `semanage port -a -t http_port_t -p tcp 1000` append port 1000 to be httpd port
	2. then goto /etc/httpd/conf/httpd.conf and add port 1000 to it
	3. but dont forget to add this port to the firewall `firewall-cmd --add-port=1000/tcp && fierwall-cmd --runtime-to-permanent`






