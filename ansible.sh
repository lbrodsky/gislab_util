#!/bin/sh

if test -z $1 ; then
    echo "provide yml file to run [unit-name]"
    exit 1
fi

tags=""
if test -n "$2" ; then
    tags="--tags $2"
fi

if test -z $3 ; then
    inventory=gislab-unit-uk
else
    inventory=$3
fi

ansible-playbook \
    --inventory=/home/user/Dropbox/PrF/GIS.lab/gislab/${inventory}.inventory \
    --private-key=/home/user/Dropbox/GIS.lab/gislab/key/id_rsa_gislab \
    #--inventory=${HOME}/git/gislab-customization-private/inventory-files/${inventory}.inventory \
    #--private-key=${HOME}/git/gislab-customization-private/ssh/id_rsa_gislab \
    $tags \
    $1

exit 0
