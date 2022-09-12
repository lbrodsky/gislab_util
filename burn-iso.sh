#!/bin/bash

if test -z $1; then
    echo "Usage: $0 path/to/iso /dev/sdf"
    exit 1
fi

if test -z $2; then
    echo "Usage: $0 path/to/iso /dev/sdf"
    exit 1
fi

ISO=$1
DEV=$2

sudo mkdosfs -n 'GIS.lab Base System' -I $DEV -F 32
sudo isohybrid $ISO
sudo dd if=$ISO of=$DEV bs=4k
sudo eject $DEV

exit 0
