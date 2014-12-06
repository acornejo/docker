#!/bin/sh

if [ ! -e NVIDIA-DRIVER.run ]; then
    echo "This script requires that you download the nvidia driver and copy it the NVIDIA-DRIVER.run file in this folder"
else
    if [ "$#" -ne 1 ]; then
        echo "Usage: build.sh image-name"
    else
        echo "building..."
        sudo docker build -t $1 .
    fi
fi
