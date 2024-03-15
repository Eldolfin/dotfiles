{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    # java
    # jetbrains.idea-community
    # jetbrains.idea-ultimate
    # maven
    openjdk17

    # rust
    # evcxr
    rustup

    # for leptos
    trunk
    leptosfmt
    cargo-leptos
    cargo-generate
    sass # for css

    # c/c++
    # jetbrains.clion
    valgrind

    # go
    go
    gopls
    gotools

    # python
    # jetbrains.pycharm-professional
    mypy
    poetry
    poethepoet
    python311Full
    python311Packages.pip
    python311Packages.python-lsp-server
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
    jetbrains.rider

    # nix
    rnix-lsp
    nixpkgs-fmt

    # kubernetes
    kubectl
    minikube

    # android
    # android-studio
    # android-tools

    # Haskell
    ghc

    # Common lisp
    # sbcl

    # sql
    # sqlfluff
    # dbeaver

    # Language servers
    lua-language-server

    # Arduino
    # arduino

    # misc
    # graphviz
  ];
  nixpkgs.config.allowBroken = true; # for ue4
}
