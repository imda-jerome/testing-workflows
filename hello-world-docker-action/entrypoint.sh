#!/bin/sh -l

echo "Hello $1"

echo "$2 $3 $4"

time=$(date)

echo "time=$time" >> $GITHUB_OUTPUT

combined_greeting="$2 $1 $3"
echo "combined-greeting=$combined_greeting" >> $GITHUB_OUTPUT

test_assets="$4"
echo "combined-greeting=$test_assets" >> $GITHUB_OUTPUT