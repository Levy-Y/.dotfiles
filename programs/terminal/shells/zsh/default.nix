{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "ansible"
        "aws"
        "command-not-found"
        "copyfile"
        "copypath"
        "gitignore"
        "gradle"
        "mvn"
        "kubectl"
        "pip"
        "python"
        "sudo"
      ];
    };

    shellAliases = {
      tf = "terraform";
      cls = "clear";
      vim = "nvim"; 
      c = "copyfile";
      x = "xclip -selection clipboard";
      v = "xclip -o";
      sc = "shellcheck";
      da = "direnv allow";
    };
  };

  home.file = {
    ".p10k.zsh".source = ./p10k.zsh;
  };
}