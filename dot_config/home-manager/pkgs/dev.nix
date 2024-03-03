{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    maven
    openjdk17

    # for leptos
    trunk
    leptosfmt
    cargo-leptos
    cargo-generate
    sass # for css

    qtcreator # ide

# c/c++
    valgrind

    # python
    poetry
    poethepoet
    python312Full
    python311Packages.pip
    python311Packages.bpython
    python311Packages.scipy
    python311Packages.matplotlib
    python311Packages.jupyter-core
    python311Packages.notebook
    python311Packages.numpy
    python311Packages.pytest
    python311Packages.psutil

    # c#
    mono
    jetbrains.pycharm-professional
    jetbrains.datagrip
    jetbrains.idea-community
    jetbrains.clion
  ];
  nixpkgs.config.allowBroken = true; # for ue4
}
