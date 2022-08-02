## Configure NTP

The Time Service NTP

`yum install -y ntp`

then goto config file `vi /etc/ntp.conf`


`systemctl enable ntpd && systemct start ntpd`

`firewall-cmd --add-service=ntp --permanent && firwall--cmd --reload`

-- on client machine-- 
`yum install ntp`
`sudo vi /etc/ntp.conf`  -> add an entry for server (server server1.example.com iburst prefer)



## Install & Configure KDC
### random no generator
`yum install -y rng-tools.x86_64`  to generate our keys
___________
`systemctl enable rngd` 

`vi /usr/lib/systemd/system/rngd.service`   
[Service]
@@@@@@@ -r /dev/urandom
save and exit
___________
`systemctl daemon-reload && systemctl start rngd`

### Kerberos Server
`yum install -y krb5-server krb5-workstation pam_krb5`


## Enable SSH Kerberos Authentication

## Add Additional Kerberos Client

