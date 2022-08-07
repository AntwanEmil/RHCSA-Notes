
# Configure Remote Block Storage Devices

iSCSI : targets share **block devices** (often LVMs) to client (iSCSI initiators) over high speed LAN.

#### installation
`yum install targetd targetcli`

`systemctl enable targetd`
add iscsi service to the firewall 
`firewall-cmd --add-service=iscsi-target --permanent`
`firewall-cmd --reload`
check by listing services
`firewall-cmd --list-services`

### Create Logical Volumes to share
`lvcreate -L 100m -n share_lv vg1`

## Configure iSCSI Target
`targetcli`
	`/> backstores/block create web_store /dev/vg1/share_lv`  make shareable 
	`/> iscsi/ create iqn.2022-07.com.example.server1:web`

## Configure iSCSI Initiator (Client)
 `yum install iscsi-initiatr-utils`
 `vi /etc/iscsi/initiatorname.iscsi` and change it to the iqn.2022-07....
 `iscsiadm --mode discovery --tyoe sendtargets --portal server1.example.com --discover` to search (discover) server
 `iscsiadm --mode node --targetname iqn.2022-07.com.example.server1:web --portal server1.example.com --login`  -> sucessful msg upon completion and sdb will be added ... check with `ls`.
 
 