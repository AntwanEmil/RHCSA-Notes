## SSH
`ssh -f -L 8080:localhost:80 root@server2 -N` listen on port 8080 and via ssh I'll send info on port 80 to server2
## openVPN Server
`yum install openvpn easy-rsa -y` 
`systemctl stop firewalld`



## openVPN Client
