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
    
    # PowerLevel10k config, and suffix aliases
    initContent = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

      alias -s md="bat"
      alias -s mov="open"
      alias -s png="open"
      alias -s mp4="open"
      alias -s {yml,yaml}="bat -l yaml"
      alias -s json="fx"
      alias -s {js,ts,jsx,tsx,py}="code"
      alias -s lua="nvim"
      alias -s go="goland"
      alias -s {kt,java}="idea"
      alias -s nix="code"
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

    shellGlobalAliases = {
      NE = "2>/dev/null";
      ND = ">/dev/null";
      NUL = ">/dev/null 2>1";
      JQ = "| jq";
      C = "| wl-copy";
      L="| less";
    };
  };

  home.file = {
    ".p10k.zsh".source = ./p10k.zsh;
  };
}