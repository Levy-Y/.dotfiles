{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = true;
    
    profiles.default = {
      enableExtensionUpdateCheck = true;
      enableUpdateCheck = false;

      extensions = with pkgs.vscode-marketplace; [
        ritwickdey.liveserver
        ms-azuretools.vscode-docker
        formulahendry.code-runner
        ecmel.vscode-html-css
        formulahendry.auto-rename-tag
        christian-kohler.path-intellisense
        formulahendry.auto-close-tag
        cschlosser.doxdocgen
        zhuangtongfa.material-theme
        aaron-bond.better-comments
        redhat.vscode-xml
        gruntfuggly.todo-tree
        codezombiech.gitignore
        wix.vscode-import-cost
        tamasfe.even-better-toml
        ms-vsliveshare.vsliveshare
        ms-python.mypy-type-checker
        yinfei.luahelper
        redhat.vscode-yaml
        mechatroner.rainbow-csv
        clemenspeters.format-json
        bradlc.vscode-tailwindcss
        vscjava.vscode-java-test
        vscjava.vscode-gradle
        ziglang.vscode-zig
        vscjava.vscode-java-dependency
        wakatime.vscode-wakatime
        esbenp.prettier-vscode
        vscjava.vscode-java-pack
        ms-azuretools.vscode-containers
        ms-python.debugpy
        hashicorp.terraform
        pkief.material-icon-theme
        redhat.java
        ms-python.vscode-pylance
        dbaeumer.vscode-eslint
        vscjava.vscode-java-debug
        vscjava.vscode-maven
        amazonwebservices.aws-toolkit-vscode
        ms-python.python
        github.copilot-chat
        github.copilot
        jnoortheen.nix-ide
        ms-python.vscode-python-envs
        github.copilot-chat
      ];
      
      userSettings = builtins.fromJSON (builtins.readFile ./vscode.json);
    };
  };
}