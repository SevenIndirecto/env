#!/bin/bash
WWW_DIR="/home/seven/backups/www"
SRC_FILE="$WWW_DIR/dserv-Sunday.tgz"
DST_FILE="$WWW_DIR/dserv-www-$(date +%Y%m%d).tgz"

cp $SRC_FILE $DST_FILE

/home/seven/scripts/gdrive upload --no-progress -p 1lhK-C2vQFamSJD0tT8D4c64Y3B6J4I-o $DST_FILE

rm $DST_FILE
