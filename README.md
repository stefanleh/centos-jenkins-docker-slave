### centos-jenkins-docker-slave

[![](https://badge.imagelayers.io/stefanlehmann/centos-jenkins-docker-slave:latest.svg)](https://imagelayers.io/?images=stefanlehmann/centos-jenkins-docker-slave:latest 'Get your own badge on imagelayers.io')

A jenkins docker slave image, based on **centos:latest**.

Can be used Out-Of-The-Box with the [docker-plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin "docker-plugin") for [Jenkins](https://jenkins-ci.org/ "Jenkins CI Server").

The image on [DockerHub](https://hub.docker.com/r/stefanlehmann/centos-jenkins-docker-slave/ "DockerHub") is built automatically from the Dockerfile here.

#### Installed packages

| Package                     | Comment                                                                          |
|-----------------------------|----------------------------------------------------------------------------------|
| openssh-server              | Jenkins communicates via ssh with its slaves.                                    |
| git                         | Most projects use GIT for version control.                                       |
| lsof                        | Needed by one of my projects for determining if a particular component is running. |
| unzip                       | Also needed by one of my projects for unzipping 3rd party content.               |
| java-1.8.0-openjdk-headless | Java OpenJDK 1.8.0 is needed for building my java projects.                      |

#### User

jenkins:jenkins (with uid 1000)
