

## SELinux Logins and Users
- `semanage login -l` (Linux User accounts are mapped to SELinux Users this comand is used to list these mappings).
- `semanage user -l` (to see selinux users)

## Modifying Default Assignment
`id -Z` current login selinux user info and restrictions
`semanage login -m -s user_u -r s0 __default__` change the \_\_default\_\_ user


## Restricting User Access
`useradd user1`
`semanage login -C -l` to list users

`useradd user2 -Z guest_u`  this will be shown in login list of selinux


