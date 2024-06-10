#!/bin/sh

set -e

pushd ~/.config/home-manager/
# nvim "+Telescope find_files"
hx .
git add . && git commit -m "Update home manager" || true
echo "Rebuilding home manager..."
nh home switch ~/.config/home-manager/
chezmoi re-add ~/.config/home-manager/
popd

notify-send "Home switch complete 🎉"
