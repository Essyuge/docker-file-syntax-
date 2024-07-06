# An example Dockerfile for installing Git on debian
FROM debian:latest
LABEL maintainer="esther.uge@student.moringaschool.com"
RUN apt-get update && apt-get install -y git
ENTRYPOINT ["git"]

RUN echo "echo Welcome to Docker!" >> /root/.bashrc

###########################################
# Dockerfile to build an Apache2 image
###########################################
# # Base image is Ubuntu
# FROM ubuntu:18.04
# #Author: Victor
# LABEL maintainer="Victor Moringa School <victor.njonge@moringaschool.com>"
# # Install apache2 package
# RUN apt-get update && \
# apt-get install -y apache2 && \
# apt-get clean
# ADD <src> ... <dst>
# ADD moringa-graduation-list.tar /
# COPY html /var/www/html
# COPY mschool.conf magic /etc/httpd/conf/


# Dockerfile to demonstrate the behaviour of CMD

# Build from base image busybox:latest
FROM busybox:latest
#  Author: Victor
LABEL maintainer="Victor Moringa School <victor.njonge@moringaschool.com>"
# Set command for CMD
CMD ["echo", "Dockerfile CMD demo from Moringa School DevOps Course"]


# Dockerfile to demonstrate the behaviour of ENTRYPOINT
# Build from base image busybox:latest
FROM busybox:latest
#  Author: Victor
LABEL maintainer="Victor Moringa School <victor.njonge@moringaschool.com>"
# Set entrypoint command
ENTRYPOINT ["echo", "Dockerfile ENTRYPOINT demo from Moringa DevOps course"]

ONBUILD ADD config /etc/studentGraduationList
EXPOSE 7373/udp 8080
# WORKDIR <dirpath>
WORKDIR /var/log
VOLUME ["<mountpoint>"]
# VOLUME <mountpoint> 
# USER <UID>|<UName>
USER 22
