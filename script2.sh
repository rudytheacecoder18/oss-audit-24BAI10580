#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rudraksh Mehta
# Description: Checks if VLC is installed in Linux and shows details

PACKAGE="vlc"

echo "===================================="
echo "   FOSS Package Inspection Report   "
echo "===================================="

echo "Checking package: $PACKAGE"
echo ""

# Check installation using command existence
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed in this Linux environment."

    # Show version (first 2 lines only)
    $PACKAGE --version | head -n 2
else
    echo "$PACKAGE is NOT installed in this Linux environment."
    echo "Note: It may be installed on Windows, but not inside WSL Ubuntu."
    echo "Suggestion: Install using 'sudo apt install vlc'"
fi

echo ""

# Case statement for description
case $PACKAGE in
    vlc)
        echo "VLC: Open-source multimedia player that supports almost all media formats."
        ;;
    firefox)
        echo "Firefox: Open-source web browser focused on privacy."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "===================================="
