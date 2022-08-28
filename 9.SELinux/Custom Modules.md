## Creating Modules
SELinux Modules are .te text files .. can be seen by tools like 'audit2allow'

1. create directory with the same module name
2. create module .te

ex ../private_files/private_files.te

```
policy_module(private_files, 1.0)
require {
	type unconfined_t;
	type setroubleshootd_t;
}
type private_files_t
fs_associate(private_files_t);

allow unconfined_t private_files_t;{dir file} relabelto;
allow setroubleshootd_t private_files_t;{dir file} getattr;
```

## Compiling
`yum install policycoreutils-devel`
`cp /usr/share/selinux/devel/Makefile .`
`make private_files.pp` making the executable
`semodule -i private_files.pp` running
	`mkdir -m 1777 /no_guests` 1 for the sticky bit

## Removing policy
`semanage -r private_files`
