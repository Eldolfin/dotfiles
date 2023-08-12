{ config, pkgs, ... }:

let
  unstable = import <nixpkgs-unstable> { };
in
{
  imports = builtins.concatMap import [
    ./services
  ];
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

  services = {
    flameshot.enable = true;

    gnome-keyring = {
      enable = true;
      components = [ "pkcs11" "secrets" "ssh" ];
    };
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
    mosquitto
    dig
    acpi
    sysstat
    jq
    niv

    # graphical programs
    jellyfin-media-player
    prismlauncher
    virt-manager
    gparted
    signal-desktop
    ckb-next
    corectrl
    android-studio
    rofi
    rofi-bluetooth
    rofi-power-menu
    lutris
    copyq
    godot_4
    gimp
    mumble
    rustdesk
    chromium
    barrier
    bitwarden
    jellyfin-mpv-shim
    sunshine

    # Language servers
    sumneko-lua-language-server
    mypy
    python3Packages.python-lsp-server


    # libraries
    gnumake
    libnotify

    # clang
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
    gamemode
    mangohud
    deno
    gccgo
    winetricks
    pyright
    xorg.libXtst.out
    mold

    # python packages
    (python310.withPackages (ps: with ps; [ numpy ruff-lsp]))

    # font
    meslo-lgs-nf

    fusuma
  ] ++ (with unstable; [
    # unstable packages

    # graphical programs
    blender

    # Language servers
    ruff

    # cli
    neovim
    podman-compose

    # libraries
    flutter
  ]);
}
