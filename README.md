# Jenkins platform

This repository contains all the Docker images to build a Jenkins platform incl. a Docker slave that starts up when needed, and deleted when the job finishes.

## Jenkins master
You find the files for the Jenkins master inside the folder JenkinsMaster. Here there are a few scripts, a text file with plugins listed and Dockerfile.

### plugins.txt
This file containes the plugins we want to install.

### build.sh
This script deletes old jenkins.war files and then downloads the latest jenkins from the web using wget. It then build t
he container with no-cache, and hoeghh/jenkins-master as tag.

### Dockerfile
The Dockerfile is very simple. Thats becourse its based on the official library/jenkins images. Our Dockerfile copies a new jenkins.war file into the image. This is downloaded by the build.sh script. The Dockerfile also copies a txt file with plugins into the image, and run plugins.sh that installs them.

### run.sh
The run script starts the container and prints out its docker ID and IP address.

