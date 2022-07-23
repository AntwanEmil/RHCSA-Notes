# SELINUX

### Modes & context

the root password stored in the shadow file :") 

`enforcing=0` changes the mood to permissive

`getenfoce` -> view the current mode

`sestatus` -> get the status, mode, and more 

- current mode (disable (only from the config. file) - permissive 0 - enforcing 1)
-  permissive -> only detects (logs) but no prevention action.

`tail /var/log/audit/audit.log` to see latest logs about selinux

`ausearch -m avc`  ausearch is a tool to search the modules (logs)





`getsebool -a` returns all the booleans of selinux

`boolean -l` description for each boolean

`getsebool httpd_read_user_content` to get the boolean value(--> off , --> on) for this sebool only.

`setsebool ----_----_---- on` to set it (but if rebooted it'll return to off again lol)

so if we want this permanent ?

`setsebool -P ----_-----_---- on`  : permanent :)



____________________

`semanage port -l` : returns all selinux port types (service type(tcp/udp) PORT_NO)

`semanage port -a -t ssh_port_t -p tcp 2222` : change ssh port to 2222 instead of the ordinary service port 22. 





