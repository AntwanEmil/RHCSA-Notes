## Loops
```
for u in user{1..5}; do
do sudo useradd $u; 
echo "password1" | sudo passwd --stdin $u;
done
```

## Shell files
```
#!/bin/bash
echo "hi"
```
to run it : 1. `chmod u+x blabla.sh`
				2. `./blabla.sh`
				3. output should be "hi"
or `bash blabla.sh`

## Read user input
```
read -p "Enter Username:" username
read -sp "Password:" passwd
echo "\n %username  %passwd"
```
-s to silence screen output

## IF Statements
```
if ["%user_password"  !=  "$user_password_check" ] ; then
	echo "passwords didn't match"
	exit 1   #error
else
	echo "all done"
fi
```

## Functions and Loops
```
prompt_user() {
	read-p "enter username" username
}

prompt_user  # call he function
```

- to read parameters passed to fn
```
prompt_user(){
	echo "$1"
}

prompt_user "antwan" 
```

### LOOPS
```
while [ <CONDITION> ] ; do
	echo "hi"
done
```

## Case Statements
some menu program
```
while true ; do
	clear
	echo "choose one of the options"
	echo "1. display users"
	echo "2. Date"
	echo "3. Quit"

	read -sn1 
	case "$REPLY" in 
	1) who;;
	2) date --date "90 days";;
	3) exit 0;;
	*) echo "please choose one selection of the menu"
	esac
	read -n1 -p "press any key to continue" # just to pause  the loop
done
```