#!/bin/bash

####
# Installation script for the files in the dotfiles repo.
#
#

# get the repo's directory from this script itself
REPODIR=$(cd "$(dirname "$0")"; pwd)

for file in $REPODIR/*; do
	[ -r "$file" -a -f "$file" ] && echo "$HOME/.$(basename $file)"
done
unset file