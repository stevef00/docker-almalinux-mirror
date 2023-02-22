#!/bin/sh

DESTDIR=/usr/share/nginx/html/almalinux/

# FIXME: should test that this is in a volume, otherwise we'll be writing to the writeable layer
test -d "$DESTDIR" || mkdir -pv $DESTDIR

/usr/bin/rsync -aR \
        rsync://mirrors.ocf.berkeley.edu/almalinux/9.1/BaseOS/x86_64/os/ \
        "$DESTDIR"

/usr/bin/rsync -aR \
        rsync://mirrors.ocf.berkeley.edu/almalinux/9.1/AppStream/x86_64/os/ \
        "$DESTDIR"
