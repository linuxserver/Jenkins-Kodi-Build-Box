#!/bin/bash
mkdir -p /source

[[ -d /source/kodi/.git ]] && rm -rf /source/kodi

git clone https://github.com/xbmc/xbmc.git /source/kodi &
pid="$!"
wait "$pid"
