#!/bin/bash
STATUS=$(systemctl is-active jenkins)
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
LOGFILE="/var/log/jenkins_monitor.log"
 
if [ "$STATUS" == "active" ]; then
    echo "$TIMESTAMP - Jenkins is UP" >> $LOGFILE
else
    echo "$TIMESTAMP - Jenkins is DOWN" >> $LOGFILE
fi
