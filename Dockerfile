FROM  centos:7

MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="kanaajin"

RUN yum -y install --setopt=tsflags=nodocs epel-release \
    && yum update -y \
    && yum -y install --setopt=tsflags=nodocs mariadb-server bind-utils pwgen psmisc hostname \ 
    && yum clean all \
    && rm -rf /var/cache/yum/*

ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-install.sh /tmp
ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-setup.sql /tmp
ADD https://raw.githubusercontent.com/mipam007/web-docker-db/master/mariadb-server.cnf /etc/my.cnf.d/server.cnf

RUN chmod +x /tmp/mariadb-install.sh

CMD ["/tmp/mariadb-install.sh"]




