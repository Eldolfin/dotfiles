{ config, pkgs, ... }:
{
    programs.alacritty = {
        enable = true;
        settings = {
            font = {
                size = 16;
                normal = {
                    family = "JetBrainsMono Nerd Font";
                };
            };
        };
    };
    # programs.wezterm.enable = true;
  home.packages = with pkgs; [
    # kitty
    cool-retro-term
  ];
}
