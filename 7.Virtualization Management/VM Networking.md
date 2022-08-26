## Libvirt installation
  `yum install libvirt`
`/etc/libvit/qemu/netwoks/` to define our defalt network

bridge works at data-link layer
## Virsh
to show virtual machines running
`virsh list`
`virsh net-list`

virsh net-start default ------ virsh net-destroy default (stop)

## create Virtual Network
/etc/libvirt/qemu/networks
