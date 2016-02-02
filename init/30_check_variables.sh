#!/bin/bash

[ "$KODI_VERSION" ] -o [ "$KODI_CHECKOUT" || (echo "you have not set KODI_VERSION or KODI_CHECKOUT"  && \ 
exit 1)


