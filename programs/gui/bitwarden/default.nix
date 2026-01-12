{ pkgs, config, ... }:
{
  home = {
    packages = with pkgs; [
      bitwarden-desktop
    ];

    sessionVariables = {
      SSH_AUTH_SOCK = builtins.toPath "${config.home.homeDirectory}/.bitwarden-ssh-agent.sock";
    };
  };
}