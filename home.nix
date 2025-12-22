{ config, pkgs, ... }:
{
  home.username = "user";
  home.homeDirectory = "/home/user";

  home.stateVersion = "25.11";

  programs = {
    home-manager.enable = true;
    direnv.enable = true;
  };

  imports = [
    ./programs/common/default.nix
    ./programs/gui/default.nix
    ./programs/terminal/default.nix
  ];
}
