{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi
    rofi-bluetooth
    rofi-power-menu
    slock
  ];
}
