FROM linuxserver/baseimage.python

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

# set some environment variables
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8


ADD pre_build/ /prebuilds/
ADD versions.list /prebuilds/

# Set the locale & mk prebuilds folder
RUN locale-gen en_US.UTF-8

RUN . /prebuilds/versions.list && \
kodi_ver="${kodi_version%.*}" && \
. prebuilds/build_lists/"$kodi_ver"/build_apps.list && \

mv /prebuilds/excludes /etc/dpkg/dpkg.cfg.d/excludes && \
apt-get update && \ 
apt-get install $INPUT_APTLIST -qy && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
 
# install fpm
RUN apt-get update && \
apt-get install \
ruby-dev -qy && \
gem install fpm && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD defaults/ /defaults/
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh

VOLUME /builds
