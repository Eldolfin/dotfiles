{ pkgs, ... }:

{
  imports = [
    ./pkgs/lazyvim.nix # switched to nixvim
    ./pkgs/dev.nix
    ./pkgs/gaming.nix
    ./pkgs/hyprland.nix
    # ./pkgs/nixvim.nix
  ];
  nixpkgs.config.permittedInsecurePackages = [
    "nix-2.15.3"
  ];
  home.packages = with pkgs;
    [
      neovim

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
      xclip

      # graphical programs
      jellyfin-media-player
      prismlauncher
      virt-manager
      gparted
      signal-desktop
      ckb-next
      corectrl
      copyq
      godot_4
      gimp
      mumble
      rustdesk
      ungoogled-chromium
      barrier
      sunshine
      kdeconnect
      insomnia
      # vesktop # discord with mods but it's crashing
      discord
      freetube
      bitwarden
      # jellyfin-mpv-shim
      mattermost-desktop
      nextcloud-client

      # libraries
      libllvm
      llvmPackages_17.libcxxabi
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
      tree-sitter
      luajitPackages.luarocks
      parallel
      black
      nix-tree
      libguestfs
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
      tailscale
      ripgrep
      nix-index
      ltrace
      bc
      apksigner
      entr

      # libs
      nodejs
      openssl
      dnsmasq
      criterion
      gtest
      gcovr

      # gui apps
      librewolf
      flameshot
      emote
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


      # graphical programs
      blender

      # cli
      # neovim
      podman-compose
      act
      bun
    ];
}
