Nftables is the default kernel firewall in centos 8.
- unlike netfilter and associated iptables command ... nftables doesnt have any predefined tables :(
`nft list tables` -> blank output

but ... after we disable then re enable the fireweall then  `nft list tables` 
tables are created in each protocol families

## inet rules
`nft add rule inet filter INPUT tcp dport 22 accept`
`nft add rule inet filter INPUT counter drop` drop all other packets other than the explicitly allowed ones.

