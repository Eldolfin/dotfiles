{ pkgs, ... }:


let
  unstable = import <unstable> { };
in
{
  home.packages = with pkgs; [
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
    kdeconnect
    jetbrains.rider
    freetube
    insomnia
    discord

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
    pkgconfig
    stdenv.cc.cc.lib
    pre-commit
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

    # font
    meslo-lgs-nf

    man-pages
    man-pages-posix

    fusuma
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

    # libraries
    # flutter
  ]);

}
