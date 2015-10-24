#!/bin/bash

kodi_ver="${kodi_version%.*}"

mkdir -p /project

. /defaults/configures/"$kodi_ver"/config_options

if [ "$kodi_ver" == "16" ]; then
cd /source/kodi
make -C tools/depends/target/crossguid PREFIX=/usr/local
make -C tools/depends/target/libdcadec PREFIX=/usr/local
fi

cd /source/kodi
./bootstrap
./configure \
$config_opts
make
make DESTDIR=/project install
