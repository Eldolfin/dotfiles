{
  programs.mpv.scripts = [
    mpvScripts.uosc
    mpvScripts.thumbfast
  ];
  home.packages = with pkgs;
    [
      # movies
      jellyfin-media-player
      jellyfin-mpv-shim
      mpv
      kodi-wayland
      vlc
    ];
}
