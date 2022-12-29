#!/bin/sh

### This code defines some constants used across the scripts.

# Crash on the first error.
set -e

# Misc.
TIME_STRING=$(date "+%Y-%m-%d_%T")

# Paths.
PATH_TO_SCRIPTS=$(dirname $0)
PATH_TO_SQL=$PATH_TO_SCRIPTS/"sql"
PATH_TO_CREATE_DROP_SCRIPT=$PATH_TO_SQL/"create_drop.sql"
PATH_TO_DATA_DUMP=$HOME/"hgmj_dump_$TIME_STRING.db"
PATH_TO_BLANK_DUMP=$HOME/"hgmj_BLANK_dump_$TIME_STRING.db"
