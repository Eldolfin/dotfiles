{ config, pkgs, ... }:

let
  unstable = import <unstable> { };
in
{
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

  programs.neovim.enable = true;

  nixpkgs.overlays = [
    (import (fetchTarball {
      url = "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

  home.packages = with pkgs; [
    # stable packages
    tldr
  ] ++ (with unstable; [
    # unstable packages
    ruff
    python3Packages.python-lsp-server
  ]);

}
