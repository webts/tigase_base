# VERSION      1

FROM webts/centos_base

# MAINTAINER webts

# install required & tigase
RUN yum install -y tar mkdir java-1.7.0-openjdk wget make gcc-c++ mysql-server mysql-devel vim openssl &&
echo "NETWORKING=yes" > /etc/sysconfig/network &&
cd /root &&
wget --no-check-certificate https://projects.tigase.org/attachments/download/1320/tigase-server-5.2.0-rc2-b3437-dist.tar.gz &&
tar xvf tigase-server-5.2.0-rc2-b3437-dist.tar.gz -C /usr/share && mv /usr/share/tigase-server-5.2.0-rc2-b3437 /usr/share/tigase &&
