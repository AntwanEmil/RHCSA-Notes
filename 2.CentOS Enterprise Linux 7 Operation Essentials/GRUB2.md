### GRUB2 Defaults

_________________________________________________

- Reinstall grub2
  - grub2-install /dev/sda
- vi /etc/defult/grub
- rhgb quiet        ---->   this command in kernel helps in not showing the complete boot process [ok] shitty things

#### Password protect grub2 menu

- unencrypted password:

  - /etc/grub.d/01_users

  - cat << EOF

    ​	set superusers="anto"
    ​	password anto sf654sdf

    EOF

  - save and exit then update grub2 "grub2-mkconfig -o /boot/grub2/grub.cfg"

- Encrypted Password

  - grub2-mkpasswd-pbkdf2
  - Enter Password: ***
  - copy the hash generated then go to the /etc/grub.d/01_users
  - "password_pbkdf2 anto grub.pbkdf2.sha512.10000.C898CF98d9898asd98a9s
  - again update grub2 like the unecrypted step.

### Custom GRUB2 Entries

- ctrl + r --> reverse search shell history
-  