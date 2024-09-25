#!/bin/bash

mkdir /root/mdb/
cd /root/mdb/

wget http://dl.marmotte.net/rpms/redhat/el7/x86_64/jemalloc-3.6.0-1.el7/jemalloc-3.6.0-1.el7.x86_64.rpm
rpm -ivh jemalloc-3.6.0-1.el7.x86_64.rpm
wget http://dl.marmotte.net/rpms/redhat/el7/x86_64/jemalloc-3.6.0-1.el7/jemalloc-devel-3.6.0-1.el7.x86_64.rpm
rpm -ivh jemalloc-devel-3.6.0-1.el7.x86_64.rpm

wget https://archive.mariadb.org/mariadb-10.1.21/yum/centos7-amd64/rpms/galera-25.3.19-1.rhel7.el7.centos.x86_64.rpm
wget https://archive.mariadb.org/mariadb-10.1.21/yum/centos7-amd64/rpms/MariaDB-10.1.21-centos7-x86_64-client.rpm
wget https://archive.mariadb.org/mariadb-10.1.21/yum/centos7-amd64/rpms/MariaDB-10.1.21-centos7-x86_64-common.rpm
wget https://archive.mariadb.org/mariadb-10.1.21/yum/centos7-amd64/rpms/MariaDB-10.1.21-centos7-x86_64-server.rpm
wget https://archive.mariadb.org/mariadb-10.1.21/yum/centos7-amd64/rpms/MariaDB-10.1.21-centos7-x86_64-compat.rpm

rpm -ev --nodeps mariadb-libs-*
yum install libaio -y
yum install boost-devel.x86_64 -y

rpm -ivh MariaDB-10.1.21-centos7-x86_64-common.rpm MariaDB-10.1.21-centos7-x86_64-compat.rpm MariaDB-10.1.21-centos7-x86_64-client.rpm galera-25.3.19-1.rhel7.el7.centos.x86_64.rpm MariaDB-10.1.21-centos7-x86_64-server.rpm
