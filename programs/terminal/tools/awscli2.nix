{ pkgs, ... }:
{
  programs.awscli = {
    settings = {
      "default" = {
        region = "eu-north-1";
        output = "json";
      };
    };
  };
}