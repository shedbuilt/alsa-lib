#!/bin/bash
./configure && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
install -Dm644 "${SHED_CONTRIBDIR}/asound.default" "${SHED_FAKEROOT}/etc/asound.default"
