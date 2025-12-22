{ pkgs, ... }:
{
  programs.vesktop = {
    enable = true;

    package = pkgs.vesktop.overrideAttrs (oldAttrs: {
      postFixup = (oldAttrs.postFixup or "") + ''
        wrapProgram $out/bin/vesktop \
          --add-flags "--no-sandbox"
      '';
    });

    settings = {
      discordBranch = "stable";
      transparencyOption = "acrylic";
      arRPC = true;
      tray = true;
      minimizeToTray = true;
      autoStartMinimized = true;
      openLinksWithElectron = true;
      enableMenu = true;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;
      enableSplashScreen = true;
      splashTheming = true;
    };

    vencord = {
      themes = {
        "system24" = ./system24.theme.css;
        "system24-catppuccin-macchiato" = ./system24-catppuccin-macchiato.theme.css;
        "midnight" = ./midnight.theme.css;
        "midnight-catppuccin-macchiato" = ./midnight-catppuccin-macchiato.theme.css;
      };
      
      settings = {
        autoUpdate = false;
        autoUpdateNotification = false;
        notifyAboutUpdates = false;
        useQuickCss = true;
        disableMinSize = true;
        
        plugins = {
          MessageLogger = {
            enabled = true;
            ignoreSelf = true;
          };
          FakeNitro.enabled = true;
          ClearURLs.enabled = true;
          BiggerStreamPreview.enabled = true;
          SilentTyping.enabled = true;
        };

        enabledThemes = [ "system24.css" ];
      };
    };
  };
}