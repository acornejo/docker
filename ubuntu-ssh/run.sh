#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 image-name"
else
    # docker run --rm -w "/home/dev" -p 5900:5900 $1 x11vnc -forever -create
    docker run --privileged --rm -w "/root" -p 2222:22 -ti $1 /sbin/my_init -- bash -l
fi

