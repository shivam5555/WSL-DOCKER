#!/bin/bash

# Simple daemon that logs the current date and time every 5 seconds
LOGFILE="/var/log/daemon.log"

# Create the log file if it doesn't exist
touch $LOGFILE

# Daemon loop
while true
do
    echo "Current Date & Time: $(date)" >> $LOGFILE
    sleep 5
done

