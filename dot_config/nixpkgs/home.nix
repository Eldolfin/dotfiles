{ config, pkgs, ... }:

let
  unstable = import <unstable> { };

  flake-compat = builtins.fetchTarball "https://github.com/edolstra/flake-compat/archive/master.tar.gz";

  hyprland = (import flake-compat {
    src = builtins.fetchTarball "https://github.com/hyprwm/Hyprland/archive/master.tar.gz";
  }).defaultNix;
in
{
  #  imports = [
  #    hyprland.homeManagerModules.default
  #  ];
  #
  #  wayland.windowManager.hyprland.enable = true;

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

  # fix for something
  nixpkgs.overlays = [
    (self: super: {
      fcitx-engines = pkgs.fcitx5;
    })
  ];

  # allowUnfree :(
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # stable packages

    # DE
    i3blocks
    picom

    # cli tools
    tealdeer
    skim
    hyperfine
    conda
    speedcrunch
    pciutils
    zip
    appimage-run
    nmap
    ntfs3g
    wireguard-tools
    scrcpy
    xdotool

    # graphical programs
    jellyfin-media-player
    prismlauncher
    virt-manager
    gparted
    signal-desktop
    rofi
    ckb-next
    noisetorch
    corectrl
    android-studio
    rofi-bluetooth
    lutris
    copyq

    # Language servers
    sumneko-lua-language-server
    mypy

    # libraries
    python310
    flutter37
    gnumake
    clang
    boost
    armadillo
    pkgconfig
    stdenv.cc.cc.lib
    pre-commit
    openjdk17
    cudatoolkit
    luajit
    wine
    stylua
    gpp

    # font
    meslo-lgs-nf
  ] ++ (with unstable; [
    # unstable packages

    # graphical programs
    chromium
    blender

    # Language servers
    ruff
    python3Packages.python-lsp-server

    neovim
  ]);

}
