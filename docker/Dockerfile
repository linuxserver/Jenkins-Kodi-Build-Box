FROM linuxserver/baseimage.python

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

# these two values control what version this box builds
ENV kodi_version="15.2"
ENV kodi_checkout="15.2-Isengard"

# set some environment variables
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# add files required before build stage
ADD pre_build/ /prebuilds/

# Set the locale & mk prebuilds folder
RUN locale-gen en_US.UTF-8

# install build dependencies
RUN kodi_ver="${kodi_version%.*}" && \
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

# add local files
ADD defaults/ /defaults/
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh

# set output volume
VOLUME /builds
