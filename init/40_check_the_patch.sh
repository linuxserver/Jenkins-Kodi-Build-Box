#!/bin/bash


kodi_ver="${KODI_VERSION%.*}"

cp /defaults/patches/"$kodi_ver"/headless.patch /source/kodi/headless.patch

cd /source/kodi || exit
git checkout "$KODI_CHECKOUT"

if [ "$( /sbin/setuser abc git apply --check headless.patch  2>&1 >/dev/null | grep -ci failed:)" = "0" ]; then
echo "patch passed test"
else
echo "patch failed test"
exit 1
fi

git apply headless.patch


