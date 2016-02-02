#!/bin/bash

kodi_ver="${KODI_VERSION%.*}"

mkdir -p /project


Config-Array() {
CONFIG_OPTS=()
while IFS= read -r line
do
CONFIG_OPTS+=("$line")
    done < "$1"
}

Config-Array "/defaults/configures/"$kodi_ver"/config_options"


if [ "$kodi_ver" == "16" ]; then
wget -O /tmp/libbluray.tar.bz2 ftp://ftp.videolan.org/pub/videolan/libbluray/0.9.0/libbluray-0.9.0.tar.bz2
cd /tmp || exit
tar xvf libbluray.tar.bz2
cd libbluray-* || exit
./bootstrap
./configure --enable-bdjava
make
make install
cd /source/kodi || exit
make -C tools/depends/target/crossguid PREFIX=/usr/local
make -C tools/depends/target/libdcadec PREFIX=/usr/local
fi

cd /source/kodi || exit
./bootstrap
./configure \
"${CONFIG_OPTS[@]}"
make
make DESTDIR=/project install


