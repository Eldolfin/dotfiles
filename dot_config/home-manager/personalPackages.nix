{ pkgs, ... }:

let
  unstable = import <unstable> { };
in
{
  home.packages = with pkgs; [
    # DE
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
    joshuto
    gnupg
    dive
    ncdu
    bacon
    gdb
    evcxr
    testdisk
    calcurse
    git-lfs
    yarn
    difftastic
    navi
    tree
    dash
    bear
    ffmpeg
    cinnamon.nemo
    cron
    sunshine
    vim

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
    sunshine
    kdeconnect
    jetbrains.rider
    insomnia
    discord
    # freetube
    # bitwarden
    # jellyfin-mpv-shim

    # Language servers
    sumneko-lua-language-server
    mypy


    # libraries
    gnumake
    libnotify
    dotnet-sdk_7
    omnisharp-roslyn
    # clang
    boost
    armadillo
    pkg-config
    pre-commit
    stdenv.cc.cc.lib
    luajit
    wine
    stylua
    gpp
    gamemode
    mangohud
    deno
    winetricks
    pyright
    xorg.libXtst.out
    mold
    obs-studio
    handbrake
    graalvm17-ce
    vscodium
    dbeaver
    rnix-lsp
    criterion
    python310Packages.bpython
    tree-sitter
    luajitPackages.luarocks
    graphviz
    parallel

    # font
    meslo-lgs-nf

    man-pages
    man-pages-posix

    fusuma

    # from configuration.nix
    # cli tools
    git
    fd
    fzf
    mpv
    btop
    zsh
    neofetch
    wget
    chezmoi
    zoxide
    zellij
    gcc12
    lazygit
    feh
    bat
    gnumake
    killall
    cmake
    usbutils
    android-tools
    tailscale
    ripgrep
    nix-index

    # libs
    nodejs
    rustup
    openssl
    bluez
    clang-tools
    dnsmasq
    python3Packages.psutil

    # gui apps
    alacritty
    librewolf
    flameshot
    emote
    xclip
    syncthing
    bluez
    blueman
    dunst
    thunderbird
    redshift
    ddccontrol
    ddcutil
    ddcui
    qbittorrent
    libreoffice
    virt-manager
    mullvad-vpn
    noisetorch
    opensnitch-ui
    xorg.xbacklight
    cpufrequtils
    #
    #    # steam fix ??
    #    pango
    #    harfbuzz
    #    libthai

    # unfree shit
    #    cudatoolkit
    #    steam
  ] ++ (with unstable; [
    # unstable packages

    # graphical programs
    blender

    # Language servers
    ruff

    # cli
    # neovim
    podman-compose
    act
    bun
  ]);


}
