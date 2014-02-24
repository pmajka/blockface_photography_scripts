#!/bin/bash -xe 


#title          :capture_blockface_photo.sh
#description    :Captures a single blockface photo
#author         :Piotr Majka
#date           :20140224
#version        :see git repo
#usage          :gphoto2 --capture-image-and-download --force-overwrite \
#               :        --hook-script=capture_blockface_photo.sh
#notes          :MAKE SURE THAT CAMERA IS IN MANUAL MODE
#bash_version   :4.2.25(1)-release
#============================================================================

# Scirpt for managing and supproting image acqusition from digital camera using
# USB connection and gphoto2 software. This file serves as a hookup script for
# gphoto2 and supports several actions: init, start, download and stop.

self=`basename $0`

# ---------------------------------------------------------
# Configuration step, you are free to change settings below.
# IMG_FOLDER   - the directory to in which the photos will be stored.
#                Make sure that the directory is provided as an absolute
#                path.

# PREFIX       - filename prefix.
# SHOW_PREVIEW - determines if preview of each photo will be
#                displayed after downloading
# VIEWER_NAME  - name of the image viever. Put a name of your favourite image
#                viever
# --------------------------------------------------------

IMG_FOLDER=
PREFIX=`date +"%Y-%m-%d-%H-%M-%s"`
SHOW_PREVIEW=true
VIEWER_NAME=geeqie

# --------------------------------------------------------
# You'd better not edit the code below
# --------------------------------------------------------

# Make sure that the target directory exists. 
mkdir -p $IMG_FOLDER

case "$ACTION" in
    init)
        echo "$self: INIT"
        # exit 1 # non-null exit to make gphoto2 call fail
        ;;
    start)
        echo "$self: START"
        ;;
    download)
        pkill geeqie
        echo "$self: DOWNLOAD to $ARGUMENT"
        
        # Copy the downloaded photo to the target directory:
        cp -rfv $ARGUMENT ${IMG_FOLDER}/${PREFIX}.cr2
        
        # If we want to see a preview of each phtoto: 
        if [ ${SHOW_PREVIEW} -eq true ]
        then
            geeqie $IMG_FOLDER/${PREFIX}.cr2 &
        fi
         
        ;;
    stop)
        echo "$self: STOP"
        ;;
    *)
        echo "$self: Unknown action: $ACTION"
        ;;
esac

exit 0
