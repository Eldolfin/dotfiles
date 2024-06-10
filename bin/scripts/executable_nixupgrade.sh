#!/bin/sh


pushd /etc/nixos
nix flake update
git add flake.nix
git commit -m "update flake.nix"
nh os switch /etc/nixos
popd
