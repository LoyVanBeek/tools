#!/bin/sh
/usr/local/bin/tarsnap -c \
    -f "$(uname -n)-$(date +%Y-%m-%d_%H-%M-%S)" \
    /home/loy/Pictures
    /home/loy/Dropbox
