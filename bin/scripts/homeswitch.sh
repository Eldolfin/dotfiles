#!/bin/sh
#
set -e

pushd ~/.config/home-manager/
nvim "+Telescope find_files"
echo "Rebuilding home manager..."
home-manager switch | grep --color error && false
chezmoi re-add ~/.config/home-manager/
popd
