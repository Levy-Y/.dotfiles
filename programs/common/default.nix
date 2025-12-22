{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Cli
    jq
    fx
    fd
    fzf
    ripgrep
    ripdrag
    zoxide
    fastfetch
    neovim
    act
    xclip
    nil
    terraform
    packer
    shellcheck
    ansible
    kubectl
    net-tools
    docker
    tree
    zip
    unzip
    unrar

    # Gui
    lmstudio
    bitwarden-desktop

    # Fonts
    meslo-lgs-nf
  ];
} 