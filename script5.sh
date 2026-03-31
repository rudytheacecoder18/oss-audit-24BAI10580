#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rudraksh Mehta
# Description: Generates a personalized open source manifesto

echo "===================================="
echo "   Open Source Manifesto Generator  "
echo "===================================="

echo ""

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Writing to file
echo "On $DATE, I believe in the power of open source." > $OUTPUT
echo "I use $TOOL regularly in my daily work." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "I aspire to build $BUILD and share it with the world." >> $OUTPUT
echo "Open source enables collaboration, innovation, and transparency." >> $OUTPUT

echo "Manifesto saved in file: $OUTPUT"
echo ""

echo "----- Your Manifesto -----"
cat $OUTPUT

echo "===================================="
