{ pkgs, ... }:

let
  unstable = import <unstable> { };
in
{

  imports = [
    # ./lazyvim.nix # switched to nixvim
    ./pkgs/dev.nix
    ./pkgs/nixvim.nix
  ];
  home.packages = with pkgs;
    [
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
      unzip
      emacs
      xorg.xmodmap
      ollama
      pamixer

      # graphical programs
      jellyfin-media-player
      prismlauncher
      virt-manager
      gparted
      signal-desktop
      ckb-next
      corectrl
      android-studio
      lutris
      copyq
      godot_4
      gimp
      mumble
      rustdesk
      ungoogled-chromium
      arduino
      barrier
      sunshine
      kdeconnect
      insomnia
      vesktop
      freetube
      # bitwarden
      # jellyfin-mpv-shim
      mattermost-desktop
      nextcloud-client


      # Language servers
      sumneko-lua-language-server
      mypy


      # libraries
      libllvm
      gnumake
      libnotify
      dotnet-sdk_7
      omnisharp-roslyn
      # clang
      boost
      armadillo
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
      # graalvm-ce
      vscode
      dbeaver
      tree-sitter
      luajitPackages.luarocks
      graphviz
      parallel
      black
      nix-tree
      libguestfs
      rustdesk
      ansible
      vagrant
      kdocker
      gitea-actions-runner
      tmux

      # font
      source-code-pro
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
      vlc
      btop
      zsh
      neofetch
      wget
      chezmoi
      zoxide
      eza
      zellij
      gcc12
      ninja
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
      ltrace
      bc
      apksigner
      entr

      # libs
      nodejs
      rustup
      openssl
      clang-tools
      dnsmasq
      criterion
      gtest
      gcovr

      # gui apps
      alacritty
      kitty
      librewolf
      flameshot
      emote
      xclip
      syncthing
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
      pkg-config
      whatsapp-for-linux
      steam

      # lsp
      rnix-lsp
      sqls
      haskell-language-server
      go
      gopls
      gotools


      # Haskell
      ghc

      # Common lisp
      sbcl

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
