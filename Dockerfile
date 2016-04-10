# VERSION      1

FROM webts/centos_base

# MAINTAINER webts

# install required
RUN echo "NETWORKING=yes" > /etc/sysconfig/network
RUN yum install -y tar mkdir java-1.8.0-openjdk wget make gcc-c++ vim openssl
# Install tigase
RUN cd /root && wget --no-check-certificate https://projects.tigase.org/attachments/download/4374/tigase-server-7.0.3-b3834-dist-max.tar.gz
RUN tar xvf tigase-server-7.0.3-b3834-dist-max.tar.gz -C /usr/share
RUN mv /usr/share/tigase-server-7.0.3-b3834 /usr/share/tigase
