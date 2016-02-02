FROM linuxserver/baseimage.python

MAINTAINER sparklyballs <sparklyballs@linuxserver.io>

# this value controls the dependencies that will be installed for a particular main version of kodi.
ENV KODI_MAIN="16"

# set some environment variables
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# add files required before build stage
ADD pre_build/ /prebuilds/

# Set the locale & mk prebuilds folder
RUN locale-gen en_US.UTF-8

# install build dependencies
RUN . prebuilds/build_lists/"$KODI_MAIN"/build_apps.list && \
mv /prebuilds/excludes /etc/dpkg/dpkg.cfg.d/excludes && \
apt-get update && \ 
apt-get install $INPUT_APTLIST -qy && \
 
# install fpm
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



