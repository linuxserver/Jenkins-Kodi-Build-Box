#!/bin/bash

kodi_ver="${kodi_version%.*}"
runtime_deps=$(while read -r line; do echo -e "$line"; done < /defaults/rundeps/"$kodi_ver"/deps.list)

cd /builds
fpm -s dir -t deb -n kodi-headless -v "$kodi_version" -C /project \
"$runtime_deps" .

chown -R abc:abc /builds
