-- wezterm api
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- font
config.font = wezterm.font("Berkeley Mono")
config.font_size = 14

-- window settings
config.enable_tab_bar = false
config.window_close_confirmation = 'NeverPrompt'
config.window_background_opacity = 0.85
config.macos_window_background_blur = 10

-- terminal colors (gruvbox from gemini)
config.colors = {
    foreground = '#ebdbb2',
    background = '#282828',
    cursor_bg = '#ebdbb2',
    cursor_fg = '#282828',
    selection_bg = '#689d6a',
    selection_fg = '#ebdbb2',
    ansi = {
      '#282828',
      '#cc241d',
      '#98971a',
      '#d79921',
      '#458588',
      '#b16286',
      '#689d6a',
      '#a89984',
    },
    brights = {
      '#928374',
      '#fb4934',
      '#b8bb26',
      '#fabd2f',
      '#83a598',
      '#d3869b',
      '#8ec07c',
      '#ebdbb2',
    },
  }

return config
