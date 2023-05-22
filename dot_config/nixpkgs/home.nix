{ config, pkgs, ... }:

let
  unstable = import <unstable> { };
in
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "oscar";
  home.homeDirectory = "/home/oscar";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # bluetooth media control
  systemd.user.services.mpris-proxy = {
    Unit.Description = "Mpris proxy";
    Unit.After = [ "network.target" "sound.target" ];
    Service.ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
    Install.WantedBy = [ "default.target" ];
  };

  # neovim nightly (rebuilds everytime so it's too slow)
  #  programs.neovim.enable = true;
  #
  #  nixpkgs.overlays = [
  #    (import (fetchTarball {
  #      url = "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
  #    }))
  #  ];

  home.packages = with pkgs; [
    # stable packages

    # cli tools
    tealdeer
    skim
    hyperfine
    conda
    speedcrunch
    pciutils

    # graphical programs
    jellyfin-media-player
    prismlauncher
    virt-manager
    gparted
    signal-desktop

    # Language servers
    sumneko-lua-language-server
    mypy

    # libraries
    python37
    gnumake
    clang
    boost
    armadillo
    pkgconfig
    stdenv.cc.cc.lib
    pre-commit
    graalvm17-ce

    # font
    meslo-lgs-nf
  ] ++ (with unstable; [
    # unstable packages

    # graphical programs
    chromium

    # Language servers
    ruff
    python3Packages.python-lsp-server

    neovim
  ]);

}
