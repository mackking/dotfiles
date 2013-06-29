#! /usr/bin/env bash

# ----------
# Installation script for the files in the dotfiles repo.
#
# ----------

source ~/.dotfiles/init/util.sh

e_header "Starting dotfile initialization..."

files=(~/.dotfiles/bash/link/*)

for file in "${files[@]}"; do
	ln -sfv "$file" "$HOME/dotbak/.$(basename $file)"
done
unset file

e_success "Linking complete. source .bashrc for full effect."