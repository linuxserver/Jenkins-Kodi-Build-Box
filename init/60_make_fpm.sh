#!/bin/bash

kodi_ver="${KODI_VERSION%.*}"


cd /builds || exit

if [ "$kodi_ver" == "16" ]; then
fpm -s dir -t deb -n kodi-headless -v "$KODI_VERSION"  -C /project \
-d "libaacs0 (>= 0.7.0-1)" \
-d "libass4 (>= 0.10.1-3ubuntu1)" \
-d "libavahi-client3 (>= 0.6.31-4ubuntu1)" \
-d "libavahi-common-dev (>= 0.6.31-4ubuntu1)" \
-d "libbluray1 (>= 1:0.5.0-1)" \
-d "libbz2-ocaml (>= 0.6.0-6build4)" \
-d "libcurl4-openssl-dev (>= 7.35.0-1ubuntu2.5)" \
-d "libdbus-1-dev (>= 1.6.18-0ubuntu4.3)" \
-d "libflac8 (>= 1.3.0-2ubuntu0.14.04.1)" \
-d "libgle3 (>= 3.1.0-7ubuntu2)" \
-d "libglew1.10 (>= 1.10.0-3)" \
-d "libiso9660-8 (>= 0.83-4.1ubuntu1)" \
-d "libjasper1 (>= 1.900.1-14ubuntu3.2)" \
-d "libjpeg8 (>= 8c-2ubuntu8)" \
-d "libjpeg-turbo8 (>= 1.3.0-0ubuntu2)" \
-d "liblzo2-2 (>= 2.06-1.2ubuntu1.1)" \
-d "libmicrohttpd10 (>= 0.9.33-1)" \
-d "libmpeg2-4 (>= 0.5.1-5ubuntu1)" \
-d "libmysqlclient18 (>= 5.5.44-0ubuntu0.14.04.1)" \
-d "libnfs1 (>= 1.3.0-2ubuntu1)" \
-d "libogg0 (>= 1.3.1-1ubuntu1)" \
-d "libpcrecpp0 (>= 1:8.31-2ubuntu2.1)" \
-d "libsmbclient (>= 2:4.1.6+dfsg-1ubuntu2.14.04.8)" \
-d "libssh-4 (>= 0.6.1-0ubuntu3.1)" \
-d "libtag1c2a (>= 1.9.1-2)" \
-d "libtag1-vanilla (>= 1.9.1-2)" \
-d "libtiff5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtiffxx5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtinyxml2.6.2 (>= 2.6.2-2)" \
-d "libvorbis0a (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisenc2 (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisfile3 (>= 1.3.2-1.3ubuntu1)" \
-d "libxrandr2 (>= 2:1.4.2-1)" \
-d "libxslt1.1 (>= 1.1.28-2build1)" \
-d "libyajl2 (>= 2.0.4-4)" \
-d "nfs-common (>= 1:1.2.8-6ubuntu1.1)" \
-d "zip (>= 3.0-8)" .

elif [ "$kodi_ver" == "15" ]; then
fpm -s dir -t deb -n kodi-headless -v "$KODI_VERSION"  -C /project \
-d "libaacs0 (>= 0.7.0-1)" \
-d "libass4 (>= 0.10.1-3ubuntu1)" \
-d "libavahi-client3 (>= 0.6.31-4ubuntu1)" \
-d "libavahi-common-dev (>= 0.6.31-4ubuntu1)" \
-d "libbluray1 (>= 1:0.5.0-1)" \
-d "libbz2-ocaml (>= 0.6.0-6build4)" \
-d "libcurl4-openssl-dev (>= 7.35.0-1ubuntu2.5)" \
-d "libdbus-1-dev (>= 1.6.18-0ubuntu4.3)" \
-d "libflac8 (>= 1.3.0-2ubuntu0.14.04.1)" \
-d "libgle3 (>= 3.1.0-7ubuntu2)" \
-d "libglew1.10 (>= 1.10.0-3)" \
-d "libiso9660-8 (>= 0.83-4.1ubuntu1)" \
-d "libjasper1 (>= 1.900.1-14ubuntu3.2)" \
-d "libjpeg8 (>= 8c-2ubuntu8)" \
-d "libjpeg-turbo8 (>= 1.3.0-0ubuntu2)" \
-d "liblzo2-2 (>= 2.06-1.2ubuntu1.1)" \
-d "libmicrohttpd10 (>= 0.9.33-1)" \
-d "libmpeg2-4 (>= 0.5.1-5ubuntu1)" \
-d "libmysqlclient18 (>= 5.5.44-0ubuntu0.14.04.1)" \
-d "libnfs1 (>= 1.3.0-2ubuntu1)" \
-d "libogg0 (>= 1.3.1-1ubuntu1)" \
-d "libpcrecpp0 (>= 1:8.31-2ubuntu2.1)" \
-d "libsmbclient (>= 2:4.1.6+dfsg-1ubuntu2.14.04.8)" \
-d "libssh-4 (>= 0.6.1-0ubuntu3.1)" \
-d "libtag1c2a (>= 1.9.1-2)" \
-d "libtag1-vanilla (>= 1.9.1-2)" \
-d "libtiff5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtiffxx5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtinyxml2.6.2 (>= 2.6.2-2)" \
-d "libvorbis0a (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisenc2 (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisfile3 (>= 1.3.2-1.3ubuntu1)" \
-d "libxrandr2 (>= 2:1.4.2-1)" \
-d "libxslt1.1 (>= 1.1.28-2build1)" \
-d "libyajl2 (>= 2.0.4-4)" \
-d "nfs-common (>= 1:1.2.8-6ubuntu1.1)" \
-d "zip (>= 3.0-8)" .

elif [ "$kodi_ver" == "14" ]; then
fpm -s dir -t deb -n kodi-headless -v "$KODI_VERSION"  -C /project \
-d "libaacs0 (>= 0.7.0-1)" \
-d "libass4 (>= 0.10.1-3ubuntu1)" \
-d "libavahi-client3 (>= 0.6.31-4ubuntu1)" \
-d "libavahi-common-dev (>= 0.6.31-4ubuntu1)" \
-d "libbluray1 (>= 1:0.5.0-1)" \
-d "libbz2-ocaml (>= 0.6.0-6build4)" \
-d "libcurl4-openssl-dev (>= 7.35.0-1ubuntu2.5)" \
-d "libdbus-1-dev (>= 1.6.18-0ubuntu4.3)" \
-d "libflac8 (>= 1.3.0-2ubuntu0.14.04.1)" \
-d "libgle3 (>= 3.1.0-7ubuntu2)" \
-d "libglew1.10 (>= 1.10.0-3)" \
-d "libiso9660-8 (>= 0.83-4.1ubuntu1)" \
-d "libjasper1 (>= 1.900.1-14ubuntu3.2)" \
-d "libjpeg8 (>= 8c-2ubuntu8)" \
-d "libjpeg-turbo8 (>= 1.3.0-0ubuntu2)" \
-d "liblzo2-2 (>= 2.06-1.2ubuntu1.1)" \
-d "libmicrohttpd10 (>= 0.9.33-1)" \
-d "libmodplug1 (>= 1:0.8.8.4-4.1)" \
-d "libmpeg2-4 (>= 0.5.1-5ubuntu1)" \
-d "libmysqlclient18 (>= 5.5.44-0ubuntu0.14.04.1)" \
-d "libnfs1 (>= 1.3.0-2ubuntu1)" \
-d "libogg0 (>= 1.3.1-1ubuntu1)" \
-d "libpcrecpp0 (>= 1:8.31-2ubuntu2.1)" \
-d "libsdl1.2-dev (>= 1.2.15-8ubuntu1.1)" \
-d "libsmbclient (>= 2:4.1.6+dfsg-1ubuntu2.14.04.8)" \
-d "libssh-4 (>= 0.6.1-0ubuntu3.1)" \
-d "libtag1c2a (>= 1.9.1-2)" \
-d "libtag1-vanilla (>= 1.9.1-2)" \
-d "libtiff5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtiffxx5 (>= 4.0.3-7ubuntu0.3)" \
-d "libtinyxml2.6.2 (>= 2.6.2-2)" \
-d "libvorbis0a (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisenc2 (>= 1.3.2-1.3ubuntu1)" \
-d "libvorbisfile3 (>= 1.3.2-1.3ubuntu1)" \
-d "libxrandr2 (>= 2:1.4.2-1)" \
-d "libxslt1.1 (>= 1.1.28-2build1)" \
-d "libyajl2 (>= 2.0.4-4)" \
-d "nfs-common (>= 1:1.2.8-6ubuntu1.1)" \
-d "zip (>= 3.0-8)" .

else 
exit 0
fi















chown -R abc:abc /builds
