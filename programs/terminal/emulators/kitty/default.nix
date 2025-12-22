{
  programs.kitty = {
    enable = true;
    font = {
      size = 10;
      name = "MesloLGS NF";
    };

    settings = {
      scrollback_lines = 10000;
      placement_strategy = "center";

      allow_remote_control = "yes";
      enable_audio_bell = "no";
      visual_bell_duration = "0.1";

      copy_on_select = "clipboard";

      selection_foreground = "none";
      selection_background = "none";

      background_opacity = "0.85";
    };

    themeFile = "Catppuccin-Macchiato";

    shellIntegration = {
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };
}