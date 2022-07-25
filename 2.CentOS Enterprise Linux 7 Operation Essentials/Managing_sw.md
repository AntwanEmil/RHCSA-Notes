# RPM & yum Commands
 - yum install -y -------  (to answer with y in every question)
 - yum remove ----- (to remove a dep)
 - yum list installed
 - yum list available (everything available on yum repository)
 
 
## Configure the yum Repository

/etc/yum.repos.d/
all repos are here .
- yum repolist
- yum repolist all (all repos ... including disabled repos)
____________________________
**Repo**
__________________________________________________
[CentOS7]
name=CentOS 7.2 Local Network
baseurl=http://192.168.56.220/centos7/
enabeld=1
gpgcheck=0
_______________________________________________

## Enabling Services
- `systemctl enable httpd.service && systemctl start httpd.service`  OR `service httpd start` OR `systemctl enable httpd --now`
- same applies for disable.
