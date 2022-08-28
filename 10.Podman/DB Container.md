## MySQL Container
`podman pull rhscl/mysql-57-rhel7`
`podman run --name=sql -d -e MYSQL_USER=username -e MYSQL_PASSWORD=Pass -e MYSQL_DATABASE=db -p 3306:3306 rhscl/mysql-57-rhel7`

to connect : `mysql -u username -p -h198.168.13.1`


## Writable Volumes
`mkdir /home/anto/mysql` we will write inside this directory
`chcon -t container_file_t /home/anto/mysql` for SELinux

change the ownership: `podman unshare chown 27:27 /home/anto/mysql` userid=27 groupid=27

then create new image with persistent volume : `podman run --name=sql -d -e MYSQL_USER=username -e MYSQL_PASSWORD=Pass -e MYSQL_DATABASE=db -p 3306:3306 -v /home/anto/mysql:/var/lib/mysql/data rhscl/mysql-57-rhel7`