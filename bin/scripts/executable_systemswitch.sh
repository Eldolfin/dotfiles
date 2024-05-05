#!/bin/sh
#
set -e

pushd /etc/nixos/
nvim "+Telescope find_files"
echo "Rebuilding system..."
sudo nixos-rebuild switch --flake "/etc/nixos#$HOSTNAME" --show-trace | grep --color error && false
git add . && git commit -m "System switch" && git push
popd
