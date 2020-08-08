#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
rsync -abuP --exclude '.git*' --exclude 'README.md' --exclude 'setup.sh' $SCRIPTPATH/ $HOME/
