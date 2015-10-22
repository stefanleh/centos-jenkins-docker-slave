# centos-jenkins-docker-slave

A jenkins docker slave image, based on **centos:latest**.

Can be used Out-Of-The-Box with the [docker-plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin "docker-plugin") for [Jenkins](https://jenkins-ci.org/ "Jenkins CI Server").

The image on [DockerHub](https://hub.docker.com/r/stefanlehmann/centos-jenkins-docker-slave/ "DockerHub") is built automatically from the Dockerfile here.

## Installed packages ##

* openssh-server
* git
* lsof
* unzip
* java-1.8.0-openjdk-headless 

## User ##
jenkins:jenkins (with uid 1000)

