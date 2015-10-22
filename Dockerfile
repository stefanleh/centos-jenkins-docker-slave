# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.
# It is based on instructions from https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin and Dockerfile 
# from https://hub.docker.com/r/evarga/jenkins-slave/

FROM centos:latest
MAINTAINER Stefan Lehmann <stefan.lehmann@unic.com>

# Install a basic SSH server GIT, UNZIP, LSOF and JDK 8
RUN yum install -y openssh-server git unzip lsof java-1.8.0-openjdk-headless && yum clean all
# TODO: check if thats really necessary on centos (the original dockerfile uses ubuntu)
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd

# Add user jenkins to the image
RUN useradd -u 1000 -m -s /bin/bash jenkins

# Set password for the jenkins user (you may want to alter this).
RUN echo "jenkins:jenkins" | chpasswd

# generate the keys
RUN /usr/bin/ssh-keygen -A

# Standard SSH port
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
