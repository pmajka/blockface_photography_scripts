#!/bin/bash -xe 

gphoto2 --capture-image-and-download \
        --force-overwrite \
        --hook-script=capture_blockface_photo.sh
