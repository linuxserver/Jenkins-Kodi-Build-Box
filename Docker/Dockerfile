FROM linuxserver/baseimage.python

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

# set some environment variables
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

ADD defaults/ /defaults/

# Set the locale
RUN locale-gen en_US.UTF-8

RUN mv /defaults/excludes /etc/dpkg/dpkg.cfg.d/excludes && \ 
. /defaults/build_apps.list && \
apt-get update && \ 
apt-get install $INPUT_APTLIST -qy && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
 
# install fpm
RUN apt-get update && \
apt-get install \
ruby-dev -qy && \
gem install fpm && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

