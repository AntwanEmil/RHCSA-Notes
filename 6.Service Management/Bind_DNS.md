## **Bind** (Berkeley Internet Name Domain)
- The most widely used DNS service :)

### installation
`yum install -y bind bind-utils`
`systemctl enable named` -> caching only server (Default)
port 53: DNS Lookups
port 953: controlling DNS server
____________________

## DNS Forwarding

`vim /etc/named.conf`
`named-checkconf -v `

- 'named.ca ' is the root zone service

## Zone
A _DNS zone_ is a portion of the _DNS_ namespace that is managed by a specific organization or administrator

## Python DNS

`yum install python-dns`
test DNS `python /usr/share/doc/python-dns-1.12.0/examples/mx.py `
```
#!/usr/bin/env python

import dns.resolver
r = dns.resolver.Resolver()
r.nameservers = ['127.0.0.1']
answers = r.query('example.vm', 'NS')
for rdata in answers:
    print rdata

```
