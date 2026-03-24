#!/bin/bash

THRESHOLD=80
DATE=$(date)
HOST=$(hostname)

df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5 " " $6}' | while read output;
do
  USAGE=$(echo $output | awk '{print $1}' | sed 's/%//g')
  PARTITION=$(echo $output | awk '{print $2}')

  if [ $USAGE -ge $THRESHOLD ]; then
    echo "================ DISK ALERT ================"
    echo "Server      : $HOST"
    echo "Date        : $DATE"
    echo "Partition   : $PARTITION"
    echo "Usage       : $USAGE%"
    echo "Threshold   : $THRESHOLD%"
    echo "Status      : WARNING - Disk usage exceeded!"
    echo "============================================"
  fi
done
