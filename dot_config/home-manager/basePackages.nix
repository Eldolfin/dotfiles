{ pkgs, ... }:

let
  unstable = import <nixpkgs-unstable> { };
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    ./wm.nix
    # ./shell.nix

  ];
  programs.starship.enable = true;
  home.packages = with pkgs; [
    # kitty
neovim
    # i3 etc
    i3lock-fancy-rapid
    i3blocks
    # polybarFull

    # cli tools
    eza
    clang-tools
    # tealdeer
    skim
    jq
    joshuto
    dive
    ncdu
    git-lfs
    fd
    fzf
    btop
    zsh
    fish
    neofetch
    chezmoi
    zoxide
    zellij
    lazygit
    bat
    ripgrep
    cargo-watch
    inotify-tools
    # scrot # full screen-shot
    cloc
    # wol

    # graphical programs
    rofi
    rofi-bluetooth
    rofi-power-menu
    copyq
    emote
    dunst
    redshift
    neovide
    picom
    moonlight-embedded

    # Language servers
    lua-language-server
    mypy
    sqlfluff

    # libraries
    libnotify
    boost
    armadillo
    stdenv.cc.cc.lib
    luajit
    stylua

    # python packages


    # font
    meslo-lgs-nf
    fusuma

  ];


}
