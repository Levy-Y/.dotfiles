{ pkgs, ... }:
{
  home.sessionVariables.DELTA_PAGER = "less -R";

  programs.git = {
    enable = true;

    ignores = [
      "*~"
      "*.swp"
      "*result*"
      ".direnv"
      "node_modules"
    ];

    settings = {
      diff.colorMoved = "default";
      merge.conflictstyle = "diff3";
      user = {
        email = "65444028+Levy-Y@users.noreply.github.com";
        name = "Levy-Y";
      };

      pull.rebase = true;
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options.dark = true;
  };
}