FROM  centos:7

MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="kanaajin"

RUN yum -y install --setopt=tsflags=nodocs epel-release \
    && yum update -y \
    && yum -y install --setopt=tsflags=nodocs mariadb-server bind-utils pwgen psmisc hostname \ 
    && yum clean all \
    && rm -rf /var/cache/yum/* \

RUN 

