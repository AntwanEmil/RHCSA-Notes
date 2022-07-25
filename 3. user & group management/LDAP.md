## OpenLDAP Install

`echo "<IP> server1.example.com" >> /etc/hosts`   
to add your ip-hostname entry to the entries listed in /hosts    
- you can ping the hostname to check if the entry is added correctly (basic HTB stuff :) )

`firewall-cmd --permanent --add-service=ldap`
- then reboot


`yum install openldap openldap-clients openldap-servers migrationtools.noarch`



## Configure  Server
`cp /usr/share/openldap-servers/DB_CONFiG.example /var/lib/ldap/DB_CONFIG`
`chown ldap.ldap /var/lib/ldap/*`
- Run ldap server
`systemctl start slapd && systemctl enable slapd`
________
- schema 
cd /etc/openldap/schema/

`ldapadd -Y EXTERNAL -H ldapi:/// -D "cn=config" -f cosine.ldif`    (adding  current user to the localhost)

`ldapadd -Y EXTERNAL -H ldapi:/// -D "cn=config" -f nis.ldif` 

- password
`slappasswd -s password1 -n > rootpwd`  (setting pass to be password1)

- config.ldif
all scripts are included in `/scripts`


## Create Directory Tree

After Modifying pass in config.ldif
`ldapmodify -Y EXTERNAL -H ldapi:/// -f config.ldif `
then 
`ldapadd -x -W -D "cn=Manager,dc=example,dc=com" -f structure.ldif`
and put your password


## Create Groups and Users
`ldapadd -x -W -D "cn=Manager,dc=example,dc=com" -f group.ldif`

cd /usr/share/migrationtools/

`vi migrate_common.ph` change DEFAULT-MAIL_DOMAIN and cd

`/usr/share/migrationtools/migrate_passwd.pl passwd user.ldif`
- passwd is a file containing passwd entry for one user 
- then vi user.ldif
- then `ldapadd -x -W -D "cn=Manager,dc=example,dc=com" -f user.ldif` to add this user you made. :")
