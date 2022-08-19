## Install Apache2 HTTPD
`yum install httpd httpd-manual`

`systemctl start httpd.service && systemctl enable httpd.service`
`systemctl status httpd.service`

`w3m http://127.0.0.1` to see the Apache welcome page

## Configure Apache HTTP Server
`apachectl configtest` to test if configs are correct 
cd /etc/httpd 
	conf -> main configs (server name)
	conf.d -> optional configs (virtual hosts)
	confmodules.d -> loading modules (additional func. ,, PHP module)
`vim /etc/httpd/conf/httpd.conf` add -> ServerName "server1.example.vm"

/vat/www/html/index.html   -> the default HTML page 

### Virtual Hosts
go to: /etc/httpd -> server root
cd conf.d then `vim main.conf` to create new conf
```
<VirtualHost *:80
	ServerName "server1.example.vm"
	DocumentRoot "/var/www/html"
</VirtualHost>
```
`cp main.conf moodle.conf` then open it and change configs to "moodle.example.com" and new root "/var/www/moodle" but make sure you create it `mkdir /var/www/moodle`



## Configure HTTP Server Log files

location: `cd /etc/httpd/logs`
`vim conf.d/main.conf` and add 
	ErrorLog "logs/server1_error"
	CustomLog "logs/server1_access" common


## Configure SSL with HTTP Server (self-signed cert)
`yum install -y mod_ssl`
`mv ssl.conf ssl.template`
generate public/private key pair
`openssl req -new -nodes -x509 -keyout moodle.key -out moodle.crt`

add in conf.d -> SSLCertificateKeyFile "conf.d/moodle.key"
							SSLCertificateFile "conf.d/moodle.crt"

then test `apachectl configtest` and restart the httpd service



## Restrict Access to Web Page
## Configure HTTP Proxy Server (Squid)
`yum install -y squid`
`systemctl start squid.service && systemctl enable squid.service `
port 3128

`export http_proxy=http://server1.example.vm:3128`



