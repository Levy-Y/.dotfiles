{ config, pkgs, ... }:
{
  home.username = "levi";
  home.homeDirectory = "/home/levi";

  home.stateVersion = "25.11";

  programs = {
    home-manager.enable = true;
    direnv.enable = true;
  };

  fonts.fontconfig.enable = true;

  imports = [
    ./programs/common/default.nix
    ./programs/gui/default.nix
    ./programs/terminal/default.nix
  ];
}
