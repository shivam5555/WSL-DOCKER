#!/bin/bash

# Simple script to continuously ping an address and log the output
TARGET="8.8.8.8"  # Google's public DNS
LOGFILE="/var/log/ping.log"

# Create the log file if it doesn't exist
touch $LOGFILE

# Ping loop
while true
do
    echo "Pinging $TARGET at $(date)" >> $LOGFILE
    ping -c 4 $TARGET >> $LOGFILE
    echo "-------------------------" >> $LOGFILE
    sleep 10
done

