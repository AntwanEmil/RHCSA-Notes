## Linux User Idenetification

id -> shows current user
`id root` -> info about root account
wheel group used for sys administration.


## Create Local Users
`sudo useradd -m user1` then `tail -n 1 /etc/passwd` to check if the user is made.

`sudo useradd -N user2 -g users -G adm`   (users is primary group ,, adm is secondary group).
- `sudo usermod -c "User One" user1`   (user1 full name)
- in debian based there is `adduser` command but in centos/redhat the adduser is symbolic link to `useradd`

## Manage User Passwords

`sudo grep user. /etc/shadow`  to see users and passwords

user2:!!:19091:0:99999:7:::  -> the !! means that password is invalid
											-> 19198 is no of days from jan 1970. 
											

`echo  'user2:password1'  | sudo chpasswd`   (set password1 as pass for user2) (works on redhat&debian).

### Password Age

`chage -l user`  (see pass change and expires)
`chage -M 40 user1` (change max no. of days before pass change for user1)

`sudo grep user1 /etc/shadow` 
	user1:!!$6$htfTfGyY   ->  !! means account is locked
	to unlock use `sudo passwd -u user1`
	to lock use `sudo passwd -l user1`


## Working With User Defaults
`less /etc/login.defs`

`sudo useradd -D`  (defaults)


`sudo vi /etc/default/useradd`      (to change defaults)

## Modify and Delete User Accounts

`sudo usermod -s /bin/bash user1`  (change user1 shell to be /bin/bash)
`chsh -l`  (list all shells available)


`sudo userdel -r user1`   (Delete user1 and his home directory '-r' )
