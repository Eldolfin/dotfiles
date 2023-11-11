{ pkgs, ... }:
{
  imports = [
    ./wm.nix
  ];
  home.packages = with pkgs; [
    # i3 etc
    i3lock
    polybarFull

    # cli tools
    tealdeer
    skim
    jq
    joshuto
    dive
    ncdu
    calcurse
    git-lfs
    exa
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
    pkgconfig
    stdenv.cc.cc.lib
    luajit
    stylua

    # python packages
    (python310.withPackages (ps: with ps; [
      python-lsp-server
      ruff-lsp
      pynvim
      pip
      numpy
    ]))

    # font
    meslo-lgs-nf
    fusuma
  ];
}
