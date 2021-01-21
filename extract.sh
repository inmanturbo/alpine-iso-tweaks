#!/bin/bash

ORIGINAL_ISO=${1}

docker build -t isobuilder .

docker run -v ${ORIGINAL_ISO}:/tmp/distro.iso -v $(pwd):/root isobuilder \
  osirrox \
    -indev /tmp/distro.iso \
    -extract / /root/iso-contents
