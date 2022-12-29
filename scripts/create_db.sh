#!/bin/sh

### This script creates a blank database file.

# Crash on the first error.
set -e

# Import constants.
. $(dirname $0)/"constants.sh"

# Let's get cracking...
if [ -f $PATH_TO_BLANK_DUMP ]; then
    echo "Blank dump already exists at path: $PATH_TO_BLANK_DUMP"
    exit 1
fi
touch $PATH_TO_BLANK_DUMP
sqlite3 $PATH_TO_BLANK_DUMP < $PATH_TO_CREATE_DROP_SCRIPT
echo "Blank database created at path: $PATH_TO_BLANK_DUMP"
