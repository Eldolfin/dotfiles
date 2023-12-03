{ pkgs, ... }:
{
  imports = [
    ./wm.nix
    ./shell.nix
  ];
  home.packages = with pkgs; [
    # i3 etc
    i3lock-fancy-rapid
    polybarFull

    # cli tools
    clang-tools
    tealdeer
    skim
    jq
    joshuto
    dive
    ncdu
    calcurse
    git-lfs
    eza
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
    neovim
    cargo-watch
    inotify-tools
    scrot # full screen-shot
    cloc
    wol

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

    # libraries
    libnotify
    boost
    armadillo
    pkg-config
    stdenv.cc.cc.lib
    luajit
    stylua

    # python packages
    python311
    python311Packages.numpy
    python311Packages.python-lsp-server
    python311Packages.ruff-lsp
    python311Packages.pynvim
    python311Packages.pip


    # font
    meslo-lgs-nf
    fusuma
  ];
}
