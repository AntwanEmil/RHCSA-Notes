## Configure Hostname


### View Hostname
`hostname -f` for full hostname view
`uname -n` for node name
`hostnamectl`

- to change hostname `hostname new_host` (but this is not persistnent)
	- We goto /etc/hostname and set it there also (to make it persistnent).... :(


### Using hostnamectl
`hostnamectl set-hostname new_hostname.example.com` (this will make persistent new hostname) :)


### Hostname Resolution
Add the hostname to /etc/hosts
or use 'avahi'

**dig** command
	`yum install -y bind-utils`
used ti show DNS name resolution
`dig +short www.facebook.com @8.8.8.8`  +short only shows IPs

