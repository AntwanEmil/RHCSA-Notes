Storage Management with Stratis
Stratis Volume Management: allows to create thinly provisioned vols and file systems with single command.

## Install

`yum install stratisd stratis-cli && systemctl enable --now stratisd`

## Pool
`stratis pool create pool1 /dev/sdb`

add new disk to the pool : `stratis pool add-data pool1 /dev/sdc`

 to list pools: `stratis pool list`

