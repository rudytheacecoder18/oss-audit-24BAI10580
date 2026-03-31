#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rudraksh Mehta

LOGFILE="/var/log/dpkg.log"
KEYWORD="install"

echo "===================================="
echo "   Log File Analysis Report         "
echo "===================================="

echo "Analyzing file: $LOGFILE"
echo ""

if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found!"
    exit 1
fi

# Count occurrences (fast method)
COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

echo "Keyword '$KEYWORD' found $COUNT times."

echo ""
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "===================================="
