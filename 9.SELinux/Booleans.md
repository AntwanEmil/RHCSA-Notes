## SELinux Condiments
`getsebool -a` list all booleans current values
`getsebool httpd_enable_homedirs` to see this bool value

`semanage boolean -l` detail about what the boolean does ... and the current values

setting the values
`setsebool httpd_enable_homedirs on`
                  -p        for persistent SELinux police 
or `semanage boolean -m --on httpd+enable_homedirs` to set it persistently also

