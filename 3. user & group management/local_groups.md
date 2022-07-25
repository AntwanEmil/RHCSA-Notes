## Create Local Groups

`/etc/group`    
`newgrp wheel`  (switches your group id (of your user))

`sudo groupadd sales`   (new group sales)

`id -Gn` (To see your user belongs to what groups (primary & secondary))

## Modify Groups Memperships

- `sudo usermod -G sales,wheel user1`  add user1 to sales group (primary) & wheel group (seconday) .

- To Add Multiple users to the same group
	- `sudo gpasswd -M user1,user2 sales`    (add user1 & user2 to sales group)
we could use gpasswd to set group administrators (-A)

## Set SGID Permission on Directory


`sudo chgrp -R apache /var/www`   (change the directory group owner to 'apache' )

`sudo chmod -R o= /var/www`  (remove all privileges from others)


## Group Passwords

`sudo gpasswd adm`  (change adm pass)

