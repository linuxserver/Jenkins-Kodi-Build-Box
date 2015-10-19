#!/bin/bash

. /defaults/variables.list

kodi_ver="${kodi_version%.*}"

cp /defaults/patches/"$kodi_ver"/headless.patch /source/kodi/headless.patch

cd /source/kodi
git checkout "$kodi_checkout"

[[ "$(git apply --check headless.patch  2>&1 >/dev/null | grep -ci failed:)" -ne "0" ]] && (echo "patch failed test" && exit 1)

echo "patch passed test"

