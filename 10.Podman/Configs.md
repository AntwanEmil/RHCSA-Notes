**Rootless Containers:** Being able to create and execute containers without needing root privileges.

## Installation
`sudo yum install podman`
check for **lirp4netns** package

## User Namespaces
`podman info` -> print everything in the config  (rootles: true)
`podman version` prints the version

## Deploying Containers with Podman

- Search for Images in the repo: `podman search httpd`
- run image (if not found it'll pull then run it): `podman run -it rhscl/httpd-24-rhel7 /bin/bash` -i interactive session 
	-t : tty     (to leave type `exit`)
- or Better `podman pull rhscl/httpd-24-rhel7` & `podman run --name=www -d --publish-all rhscl/httpd-24-rhel7`
- List all images : `podman image ls`
- To see the stopped/running containers: `podman ps -a`
_______________
- To Get info about the image
`podman inspect registry.access.redhat.com/rhscl/httpd-24-rhel7 | grep expose`
used search for the exposed server port.

- port mapping `podman run --name=www -d -p 8000:8080 rhscl/httpd-24-rhel7`
port 8000 in our host will be mapped to 8080 on the podman container.
--name of the container will be "www"
-d: detach mode (**we can start up the container and could use the console after startup for other commands**)
- to see all port mappings: `podman port -l`
  
- stop the container `podman stop www`
											- `restart`
											- `kill`
- Delete image: `podman rmi rhscl/httpd-24-thel7`

_______________
### Persistent Volumes
If we have our website on directory in the host machine
we should share it with our container (Attach this volume to our container)
Even if the container is destroyed ... the volume still will be on the host machine untouched
HOW ?? 
- If you have SELinux 
  `chcon -Rvt container_file_t web_pages/`
**Mapping Volume**
`podman run --name=www -d -p 8000:8080 -v /home/anto/web_pages:/var/www/html registry.access.redhat.com/rhscl/httpd-24-rhel7`