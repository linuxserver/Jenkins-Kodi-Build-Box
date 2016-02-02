#!/bin/bash
mkdir -p /source /build/source

[[ -d /source/kodi/.git ]] && rm -rf /source/kodi

if [ ! -d "/builds/source/.git" ]; then
git clone https://github.com/xbmc/xbmc.git /builds/source &
pid="$!"
wait "$pid"
else
cd /builds/source
git pull
fi

cp -pr /builds/source /source/kodi

chown -R abc:abc /builds


