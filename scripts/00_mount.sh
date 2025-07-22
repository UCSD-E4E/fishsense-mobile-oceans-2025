#! /bin/bash

mkdir -p ./data
if ! findmnt ./data; then
    sudo mount -v -t cifs -o vers=3,credentials=$E4E_NAS_CREDS,uid=`whoami`,ro "//e4e-nas.ucsd.edu/fishsense_data/CCFRP" ./data
fi