FROM rhscl/centos:latest

MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="kanaajin"

ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/repo /etc/yum.repos.d/mariadb.repo
ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-install.sh /opt
ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-setup.sql /tmp
ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-server.cnf /etc/my.cnf.d/server.cnf

RUN yum -y install --setopt=tsflags=nodocs epel-release \
    && yum update -y \
    && yum -y install --setopt=tsflags=nodocs MariaDB-server bind-utils pwgen psmisc hostname \
    && yum clean all \
    && rm -rf /var/cache/yum/*

RUN chmod +x /opt/mariadb-install.sh

EXPOSE 3306

CMD ["bin/bash", "/opt/mariadb-install.sh"]
