local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- General
config.font_size = 11
config.line_height = 1.09
config.font = wezterm.font("MesloLGS NF")
config.color_scheme = "tokyonight_night"

config.colors = {
    cursor_bg = "#7aa2f7",
    cursor_border = "#d0dfff",
}

config.window_decorations = "RESIZE"

config.enable_tab_bar = false
 
config.window_background_opacity = 0.9

wezterm.on("gui-startup", function(cmd)
  local screen = wezterm.gui.screens().active
  local ratio = 0.4
  local width, height = screen.width * ratio, screen.height * ratio
  local tab, pane, window = wezterm.mux.spawn_window {
    position = {
      x = (screen.width - width) / 2,
      y = (screen.height - height) / 2,
      origin = 'ActiveScreen'
    }
  }
  window:gui_window():set_inner_size(width, height)
end)

-- Key bindings
config.keys = {
    {
        key = 'w',
        mods = 'CTRL',
        action = act.CloseCurrentPane { confirm = false },
    },
    {
        key = 't',
        mods = 'CTRL',
        action = act.SpawnTab { DomainName = 'unix' },
    },
    {
        key = 'd',
        mods = 'CTRL',
        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'd',
        mods = 'CTRL|SHIFT',
        action = act.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'r',
        mods = 'CTRL',
        action = act.ReloadConfiguration,
    },
    {
        key = 'q',
        mods = 'CTRL|ALT',
        action = act.PaneSelect {
            alphabet = '1234567890',
            mode = 'Activate',
        },
    },

    -- Switch between panes
    {
        key = 'h',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Left', 
    },
    {
        key = 'l',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Right',
    },
    {
        key = 'j',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Down',
    },
    {
        key = 'k',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Up',
    },

    -- Resize window in directions
    { 
	key = 'LeftArrow',
        mods = 'CTRL|SHIFT',
        action = act.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 'RightArrow',
        mods = 'CTRL|SHIFT',
        action = act.AdjustPaneSize { 'Right', 5 },
    },
    {
        key = 'DownArrow',
        mods = 'CTRL|SHIFT',
        action = act.AdjustPaneSize { 'Down', 5 },
    },
    {
        key = 'UpArrow',
        mods = 'CTRL|SHIFT',
        action = act.AdjustPaneSize { 'Up', 5 },
    },
}

return config
