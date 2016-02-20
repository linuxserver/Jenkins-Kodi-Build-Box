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

Config-Array "/defaults/configures/$kodi_ver/config_options"


if [ "$kodi_ver" == "16" ]; then
git clone https://github.com/vlc-mirror/libudfread /tmp/libudfread
cd /tmp/libudfread
./configure
make
make install

git clone http://git.videolan.org/git/libbluray.git /tmp/libbluray
cd /tmp/libbluray || exit
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


