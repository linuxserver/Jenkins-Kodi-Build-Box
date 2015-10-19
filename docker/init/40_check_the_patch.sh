#!/bin/bash

. /prebuilds/versions.list

kodi_ver="${kodi_version%.*}"

cp /defaults/patches/"$kodi_ver"/headless.patch /source/kodi/headless.patch

cd /source/kodi
git checkout "$kodi_checkout"

if [ "$( /sbin/setuser abc git apply --check headless.patch  2>&1 >/dev/null | grep -ci failed:)" = "0" ]; then
echo "patch passed test"
else 
echo "patch failed test"
exit 1
fi
