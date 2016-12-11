### centos-jenkins-docker-slave

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
| oracle jdk-1.8.0            | Java 8                                                                           |

#### User

| uid  | username | password |
|------|----------|----------|
| 1000 | jenkins  | jenkins  |

#### Versions

Please see the branches (GitHub) or Tags (DockerHub) for versions with other JDK or docker client included.
