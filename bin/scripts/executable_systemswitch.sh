#!/bin/sh

set -e

pushd /etc/nixos/
nvim "+Telescope find_files"
echo "Rebuilding system..."
nh os switch /etc/nixos
git add . && git commit -m "System switch" && git push
popd
