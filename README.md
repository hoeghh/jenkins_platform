# Jenkins platform

This repository contains all the Docker images to build a Jenkins platform incl. a Docker slave that starts up when needed, and deleted when the job finishes.

## Jenkins master
You find the files for the Jenkins master inside the folder JenkinsMaster. Here there are a few scripts, a text file with plugins listed and Dockerfile.

### plugins.txt
This file containes the plugins we want to install.
Example :

```
ssh-slaves:latest
durable-task:latest
token-macro:latest
docker-plugin:latest
kubernetes:latest
```

### build.sh
This script deletes old jenkins.war files and then downloads the latest jenkins from the web using wget. It then build t
he container with no-cache, and hoeghh/jenkins-master as tag.

### Dockerfile
The Dockerfile is very simple. Thats becourse its based on the official library/jenkins images. Our Dockerfile copies a new jenkins.war file into the image. This is downloaded by the build.sh script. The Dockerfile also copies a txt file with plugins into the image, and run plugins.sh that installs them.

### run.sh
The run script starts the container and prints out its docker ID and IP address.

### update-jenkins.sh
This script will, when Jenkins is running, pull the plugins from Jenkins that needs to be updated, and then request Jenkins to do the update, and restart. Jenkins need to be running for this. After the script stops running, the Jenkins instances plugins will be up-to-date.

## Jenkins slave

### Dockerfile
This Dockerfile is based on the ubuntu:trusty image. It installs OpenSSH server and OpenJDK 7. It adds a jenkins user and exposes port 22.

### build.sh
The build script simply builds the slave with --no-cache and stores it as hoeghh/jenkinsslave.
