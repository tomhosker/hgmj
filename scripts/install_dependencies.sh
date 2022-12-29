#!/bin/sh

### This script installs the dependencies required by the other scripts in this
### directory.

# Crash on the first error.
set -e

# Local constants.
DEPENDENCIES="sqlite3"

# Let's get cracking...
sudo apt install --yes $DEPENDENCIES
