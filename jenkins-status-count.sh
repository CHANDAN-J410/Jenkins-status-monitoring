#!/bin/bash

LOG_FILE="/var/log/jenkins_monitor.log"
UP_COUNT=$(grep -c "UP" $LOG_FILE)
DOWN_COUNT=$(grep -c "DOWN" $LOG_FILE)

echo "Jenkins Status Report"
echo "======================"
echo "Total UP occurrences: $UP_COUNT"
echo "Total DOWN occurrences: $DOWN_COUNT"
