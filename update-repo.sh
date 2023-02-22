#!/bin/sh

ALMA_VERSION=${ALMA_VERSION:-8.7}

DESTDIR=/usr/share/nginx/html/almalinux/

# FIXME: should test that this is in a volume, otherwise we'll be writing to the writeable layer
test -d "$DESTDIR" || mkdir -pv $DESTDIR

/usr/bin/rsync -aR \
        rsync://mirrors.ocf.berkeley.edu/almalinux/${ALMA_VERSION}/BaseOS/x86_64/os/ \
        "$DESTDIR"

/usr/bin/rsync -aR \
        rsync://mirrors.ocf.berkeley.edu/almalinux/${ALMA_VERSION}/AppStream/x86_64/os/ \
        "$DESTDIR"
