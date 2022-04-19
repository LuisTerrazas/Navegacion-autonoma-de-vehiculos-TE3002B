
#! /bin/bash

B="100K"
F="ogg"
ssh 10.42.0.1 Puzzlebot72 ffmpeg -b $B -an -f video4linux2 \
    -s 320x240 -r 10 -i /dev/video0 -b $B -f $F - \
    | vlc -