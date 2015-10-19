#!/bin/bash

. /prebuilds/versions.list

kodi_ver="${kodi_version%.*}"

. /defaults/configures/"$kodi_ver"/config_options

cd /source/kodi
./bootstrap
./configure \
$config_opts

make

