## Kernel Support of ACLs
`uname -r ` to get kernel version
`ls /boot/config-3.10.0-327..4.4.e17.x86_64`

If we need to see wehter ACLs are supported or not
`sudo tune2fs -l /dev/sdb6 | grep -i default`
-i for case insensitive search

### Display ACLs
`ls -l` seeig a . at the end of ACL representing ACL support (but not set)
			+ symbol at the end ACL is supported & set.

`getfacl file.txt` to see user and group and ACLs of file (get file acl)

## Configure Default ACL
getfacl can be used with directories.

#### setting default ACL
`setfacl -m d:o:--- test/` others don't have any permissions now for new files created within the 'test/' directory.
-m : modify
________________________
`setfacl -dm u:user1:rw test/` -> user1 has read&write access on files inside 'test/'

## Removing ACLs
`setfacl -x u:user1 file1` -> remove user1 acl individual entry.
`setfacl -b file1` -> removing all the ACL.

## Security Issues
`restorecon /etc/shadow` to restore the original permissions of the shadow file
`restorecon -R /test/`
