#!/bin/bash
./configure &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install &&
install -Dm644 "${SHED_PKG_CONTRIB_DIR}/asound.conf.sample" "${SHED_FAKE_ROOT}/etc/asound.conf.sample"
