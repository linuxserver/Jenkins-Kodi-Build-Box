#!/bin/bash

kodi_ver="${kodi_version%.*}"

mkdir -p /project

. /defaults/configures/"$kodi_ver"/config_options

cd /source/kodi
./bootstrap
./configure \
$config_opts
make
make DESTDIR=/project install
