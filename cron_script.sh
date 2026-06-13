#!/bin/bash

BACKUP_DIR="/backup"
DATE=$(date +%F)
LOGFILE="/var/log/backup.log"

if [ ! -d "$BACKUP_DIR" ]
then
    mkdir -p "$BACKUP_DIR"
fi

tar -czf "$BACKUP_DIR/etc_backup_$DATE.tar.gz" /etc

if [ $? -eq 0 ]
then
    echo "$(date) : Backup Successful" >> "$LOGFILE"
else
    echo "$(date) : Backup Failed" >> "$LOGFILE"
fi
