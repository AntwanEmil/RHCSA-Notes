- Outgoing mail is handled by SMTB server.
- Incoming mail will be also go through SMTP server then stored in IMAP/POP3 server
- SMTP ----  POP3 ---- MUTT (Email client)

## Install
`yum install postfix` smtp server
`systemctl status postfix`

smtp service : port 25

## Postfix Configs
`yum install -y mailx`
## Dovecot
clients can collect their email remotely

## Mutt Mail client
`yum install -y mutt`
`vim .muttrc` 
```
set spoolfile="imap://anto@server1.example.vm"
```
then open  `mutt`
