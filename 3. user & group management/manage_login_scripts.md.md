## Execution Order
`su -` == `su -l` (they change the current directory to ~)
`su` only stays in the current directory you are in

## Modify System Login Scripts

/etc/profile*

echo $PS1 -> [\u@\h \W]\$
- `vi /etc/bashrc`      --> to edit the PS1 view 


## Home Directory Template

`/etc/skel`

contains (.bashrc , .bash_profile)
					|
				etc/bashrc
				