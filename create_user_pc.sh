#!/bin/sh

for n in `seq 1 19`; do
    if [ $n -lt 10 ] ; then
	num="0$n"
    else
	num="$n"
    fi
    user=pc$num
    echo $user
    #sudo rm -f /mnt/home/${user}/.gislab/session.lock
    #sudo gislab-deluser -f $user
    #sudo gislab-adduser -g PC-$num -l B870 -m lukas.brodsky@natur.cuni.cz -p b870 $user
done

exit 0