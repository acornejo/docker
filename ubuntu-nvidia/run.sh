#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 image-name"
else
    SOCK="/tmp/.X11-unix"
    XAUTH="/tmp/.X11-auth-docker-$RANDOM"
    touch $XAUTH
    xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
    sudo docker run --privileged --rm -v="$SOCK:$SOCK:rw" -v "$XAUTH:$XAUTH" -e "DISPLAY=$DISPLAY" -e "XAUTHORITY=$XAUTH" -ti -w "/home/dev" $1 /bin/bash -l
    rm -f $XAUTH
fi

