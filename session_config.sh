#!/bin/bash -xe

# ---------------------------------------------------------
# Configuration step, you are free to change settings below.

# the directory to in which the photos will be stored.  Make sure that the
# directory is provided as an absolute path.
IMG_FOLDER=

# filename prefix, can include e.g. specimen name
PREFIX=`date +"%Y-%m-%d-%H-%M-%s"`

# determines if preview of each photo will be displayed after downloading
SHOW_PREVIEW=true

# name of the image viever. Put a name of your favourite image viever
VIEWER_NAME=geeqie
