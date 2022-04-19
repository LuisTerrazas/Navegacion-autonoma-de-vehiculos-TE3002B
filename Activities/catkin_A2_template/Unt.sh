
#! /bin/bash

B="100K"
F="ogg"
ssh <remote_host> ffmpeg -b $B -an -f video4linux2 \
    -s 320x240 -r 10 -i /dev/video0 -b $B -f $F - \
    | vlc -