#!/bin/bash
# Script 1: System Identity Report
# Author: Rudraksh Mehta
# Description: Displays system information

echo "===================================="
echo " Open Source Audit System Report"
echo "===================================="

# Display student name
echo "Student Name: Rudraksh Mehta"

# Get system details
USER_NAME=$(whoami)
DATE=$(date)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
HOME_DIR=$HOME

# Display details
echo "User: $USER_NAME"
echo "Home Directory: $HOME_DIR"
echo "Date & Time: $DATE"
echo "Kernel Version: $KERNEL"
echo "System Uptime: $UPTIME"

# License message
echo "License: GNU General Public License (GPL)"

echo "===================================="
