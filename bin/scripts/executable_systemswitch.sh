#!/bin/sh

set -e

trap 'notify-send "System switch failed 😢"' ERR

pushd /etc/nixos/
$EDITOR
echo "Rebuilding system..."
nh os switch /etc/nixos
git add . && git commit -m "System switch" && git push
popd

notify-send "System switch complete 🎉"
