#!/bin/bash

OUTFILE="${1:-custom-build}"
INFILE="${2:-iso-contents}"

docker build -t isobuilder .

docker run -v $(pwd):/root isobuilder \
  mkisofs -o /root/${OUTFILE}.iso \
  -b boot/syslinux/isolinux.bin \
  -c boot.cat -no-emul-boot \
  -boot-load-size 4 \
  -boot-info-table -J -R -V "Custom ISO Preseed" \
  /root/${INFILE}

echo "making iso boootable"

docker run -v $(pwd):/root isobuilder \
  isohybrid /root/${OUTFILE}.iso
  
