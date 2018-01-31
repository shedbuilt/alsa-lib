#!/bin/bash
if [ ! -e /etc/asound.conf ]; then
    cp -p /etc/asound.default /etc/asound.conf
fi