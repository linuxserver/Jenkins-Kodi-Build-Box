FROM linuxserver/baseimage

ENV APTLIST="autoconf \
automake \
autopoint \
build-essential \
cmake \
doxygen \
gawk \
git-core \
gperf \
libass-dev \
libavahi-client-dev \
libbluray-dev \
libboost1.54-dev \
libbz2-ocaml-dev \
libcurl4-openssl-dev \
libflac-dev \
libgle3-dev \
libglew-dev \
libgnutls-dev \
libiso9660-dev \
libjasper-dev \
libjpeg-dev \
liblzo2-dev \
libmicrohttpd-dev \
libmpeg2-4-dev \
libmysqlclient-dev \
libnfs-dev \
libpcre3-dev \
libsmbclient-dev \
libsqlite3-dev \
libssh-dev \
libssl-dev \
libtag1-dev \
libtiff5-dev \
libtinyxml-dev \
libtool \
libvorbis-dev \
libxml2-dev \
libxrandr-dev \
libxslt-dev \
libyajl-dev \
openjdk-7-jre-headless \
python-dev \
swig \
unzip \
wget \
yasm \
zip"

RUN apt-get update && \
apt-get install $APTLIST -qy && \

ruby-dev -qy && \
gem install fpm && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
