-- wezterm api
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- set default shell
config.default_prog = {"C:\\Program Files\\PowerShell\\7\\pwsh.exe"}

-- font
config.font = wezterm.font("Berkeley Mono")
config.font_size = 10

-- window settings
config.enable_tab_bar = false
config.window_close_confirmation = 'NeverPrompt'

-- terminal colors (gruvbox from gemini)
config.colors = {
 foreground = '#ebdbb2',
 background = '#282828',
 cursor_bg = '#ebdbb2',
 cursor_fg = '#282828',
 selection_bg = '#689d6a',
 selection_fg = '#ebdbb2',
 ansi = {
   '#282828',
   '#cc241d',
   '#98971a',
   '#d79921',
   '#458588',
   '#b16286',
   '#689d6a',
   '#a89984',
 },
 brights = {
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

-- other
config.audible_bell = "Disabled"

-- keymaps
local action = wezterm.action
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 2000 }

config.keys = {
 {
   key = '%',
   mods = "LEADER|SHIFT",
   action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
 },
 {
   key = '"',
   mods = "LEADER|SHIFT",
   action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
 },
 {
   key = "z",
   mods = "LEADER",
   action = action.TogglePaneZoomState,
 },
 { 
   key = "[", 
   mods = "LEADER", 
   action = action.ActivateCopyMode 
 },
 {
   key = "c",
   mods = "LEADER",
   action = action.SpawnTab("CurrentPaneDomain"),
 },
 {
   key = "h",
   mods = "LEADER",
   action = action.ActivatePaneDirection("Left"),
 },
 {
   key = "l",
   mods = "LEADER",
   action = action.ActivatePaneDirection("Right"),
 },
 {
   key = "j",
   mods = "LEADER",
   action = action.ActivatePaneDirection("Up"),
 },
 {
   key = "k",
   mods = "LEADER",
   action = action.ActivatePaneDirection("Down"),
 },
 { 
   key = 't',
   mods = 'LEADER',
   action = wezterm.action.ShowTabNavigator
 },

 {
   key = 'r',
   mods = 'LEADER',
   action = action.PromptInputLine {
     description = 'Enter new tab name',
     action = wezterm.action_callback(function(window, pane, line)
       -- https://wezterm.org/config/lua/keyassignment/PromptInputLine.html#example-of-interactively-renaming-the-current-tab
       -- line will be `nil` if they hit escape without entering anything
       -- An empty string if they just hit enter
       -- Or the actual line of text they wrote
       if line then
         window:active_tab():set_title(line)
       end
     end),
   },
 },
}

-- keymaps for quickly changing tabs
for i = 1, 9 do
 table.insert(config.keys, {
   key = tostring(i),
   mods = "LEADER",
   action = action.ActivateTab(i - 1),
 })
end

return config
