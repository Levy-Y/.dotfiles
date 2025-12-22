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
      tray = true;
      minimizeToTray = true;
      autoStartMinimized = true;
      openLinksWithElectron = true;
      enableMenu = true;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;
      enableSplashScreen = true;
      splashTheming = true;
      splashBackground = "#000000";
      splashColor = "#ffffff";
    };

    vencord.settings = {
      autoUpdate = false;
      autoUpdateNotification = false;
      notifyAboutUpdates = false;
      useQuickCss = true;
      disableMinSize = true;
      enableTheme = [ "catppuccin-macchiato.theme.css" ];
      
      plugins = {
        MessageLogger = {
          enabled = true;
          ignoreSelf = true;
        };
        FakeNitro.enabled = true;
      };

      themes = builtins.toPath ./catppuccin-macchiato.theme.css;
    };
  };
}