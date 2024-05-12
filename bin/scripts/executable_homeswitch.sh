#!/bin/sh

set -e

pushd ~/.config/home-manager/
nvim "+Telescope find_files"
echo "Rebuilding home manager..."
nh home switch ~/.config/home-manager/
chezmoi re-add ~/.config/home-manager/
popd
