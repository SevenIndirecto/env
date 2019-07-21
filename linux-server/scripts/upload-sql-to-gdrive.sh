#!/bin/bash
BACKUP_DIR="/var/lib/automysqlbackup/daily"
ZIP_FILE="/home/seven/backups/dserv-sql-$(date +%Y%m%d).tgz"

sudo tar -czf $ZIP_FILE -C $BACKUP_DIR .

/home/seven/scripts/gdrive upload --no-progress -p 1Ot1t9c9iRVI3zF07xJhkyr6Q8dI7uy4h $ZIP_FILE

sudo rm $ZIP_FILE
