#!/bin/sh

if [ ! -f "key.pub" ]; then
    echo "please copy your public ssh key to key.pub"
    exit 1
fi

if [ "$#" -ne 1 ]; then
    echo "Usage: build.sh image-name"
else
    echo "building..."
    docker build -t $1 .
fi
