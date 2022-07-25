## Install OpenLDAP Client
 -- On the Client Machine -- 
- `echo "192.168.1.10" server1.example.com >> /etc/hosts` (adding server1 to our hosts)   -> Ping to make sure it's working
- `yum install oddjob oddjob-mkhomedir`
- `systemctl start oddjobd && systemctl enable oddjobd`
- `yum install openldap-clients.x86_64 nss-pam-ldapd`
- `authconfig-tui` (for GUI Authentication)
- Go through the auth process
Or Equivalent Command :) 
- `authconfig --enableldap --ldapserver=server1.example.com --ldapbasedn="dc=example,dc=com" --enablemkhomedir --update`   
____________________
Now Your Client authentication is done.


## List Users & Groups 
  -- For Client --
- List Users : `getent passwd`
- List Groups: `getent group`
-- For Server --
- We can see our local groups/users only


## Search Users & Groups
 -- From Client --
- `ldapsearch -x -LLL -H ldap://server1.example.com -b dc=example,dc=com`
