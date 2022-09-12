#!/bin/sh

if test -z $1; then
    echo "Usage: $0 path/to/iso"
    exit 1
fi

sudo /media/eodata/data/GIS.lab/gislab/providers/gislab-unit/gislab-unit-iso.sh \
     -s CZ \
     -t Europe/Prague \
     -d 240 \
     -a 8 \
     -k /media/eodata/data/GIS.lab/key/id_rsa.pub \
     -w /media/eodata/data/GIS.lab/iso \
     -i $1

exit 0
