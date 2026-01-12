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
    opentofu
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
    powershell
    ngrok

    # Gui
    lmstudio
    protonvpn-gui
    insomnia
    anydesk
    jetbrains-toolbox

    # Fonts
    meslo-lgs-nf
  ];
} 