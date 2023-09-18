{ pkgs, ... }:
{
home.packages = with pkgs; [
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
    neofetch
    chezmoi
    zoxide
    zellij
    lazygit
    bat
    ripgrep
    neovim

    # graphical programs
    rofi
    rofi-bluetooth
    rofi-power-menu
    copyq
    flameshot
    emote
    dunst
    redshift

    # Language servers
    sumneko-lua-language-server
    mypy
    python310Packages.python-lsp-server


    # libraries
    libnotify
    boost
    armadillo
    pkgconfig
    stdenv.cc.cc.lib
    luajit
    stylua
    vscodium

    # python packages
    (python310.withPackages (ps: with ps; [ 
    ruff-lsp
    pynvim
    pip
    ]))

    # font
    meslo-lgs-nf
    fusuma
  ];
  }
