local wezterm = require("wezterm")
local bg_constants = require("bg-constants")

local act = wezterm.action
local config = wezterm.config_builder()

-- Checking for Operating System
local target = wezterm.target_triple

if target:find("windows") then
  print("Running on Windows")
  config.default_prog = { "pwsh.exe", "-NoLogo" }
elseif target:find("apple") then
  print("Running on macOS")
  config.macos_window_background_blur = 40
  config.native_macos_fullscreen_mode = true
elseif target:find("linux") then
  print("Running on Linux")
end

-- Toggle bar function
wezterm.on('toggle-tab-bar', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  overrides.enable_tab_bar = not overrides.enable_tab_bar
  window:set_config_overrides(overrides)
end)

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32
config.adjust_window_size_when_changing_font_size = false
config.font = wezterm.font('JetBrainsMono Nerd Font')

-- Background
config.window_background_image = bg_constants.bg_image
config.window_background_opacity = 1.0 
config.window_background_image_hsb = {
  brightness = bg_constants.brightness,  
  hue = bg_constants.hue,
  saturation = bg_constants.saturation,
}

-- Classic tmux green theme
config.colors = {
  tab_bar = {
    background = "#282828", -- Gruvbox dark background

    active_tab = {
      bg_color = "#fabd2f", -- Gruvbox yellow
      fg_color = "#282828", -- Dark text
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "#3c3836", -- Dark gray
      fg_color = "#ebdbb2", -- Light foreground
    },

    inactive_tab_hover = {
      bg_color = "#504945", -- Slightly lighter gray
      fg_color = "#fbf1c7", -- Brighter foreground
      italic = true,
    },

    new_tab = {
      bg_color = "#3c3836",
      fg_color = "#ebdbb2",
    },

    new_tab_hover = {
      bg_color = "#458588", -- Gruvbox blue
      fg_color = "#fbf1c7",
      italic = true,
    },
  },
}

-- Colors
config.color_scheme = 'GruvboxDark'

config.keys = {
  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },

  { key = "h", mods = "CTRL|SHIFT|ALT", action = act.ActivatePaneDirection "Left" },
  { key = "j", mods = "CTRL|SHIFT|ALT", action = act.ActivatePaneDirection "Down" },
  { key = "k", mods = "CTRL|SHIFT|ALT", action = act.ActivatePaneDirection "Up" },
  { key = "l", mods = "CTRL|SHIFT|ALT", action = act.ActivatePaneDirection "Right" },
  
  -- Optional: split panes like Vim
  { key = "v", mods = "CTRL|SHIFT|ALT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "s", mods = "CTRL|SHIFT|ALT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  
  -- Optional: close current pane
  { key = "w", mods = "CTRL|SHIFT|ALT", action = act.CloseCurrentPane { confirm = true } },

  -- Toggle tab bar
  { key = 'b', mods = 'CTRL|SHIFT', action = wezterm.action.EmitEvent('toggle-tab-bar')},

  -- Quick ALT navigation for tabs
  { key = '1', mods = 'ALT', action = wezterm.action.ActivateTab(0) },
  { key = '2', mods = 'ALT', action = wezterm.action.ActivateTab(1) },
  { key = '3', mods = 'ALT', action = wezterm.action.ActivateTab(2) },
  { key = '4', mods = 'ALT', action = wezterm.action.ActivateTab(3) },
  { key = '5', mods = 'ALT', action = wezterm.action.ActivateTab(4) },
  { key = '6', mods = 'ALT', action = wezterm.action.ActivateTab(5) },
  { key = '7', mods = 'ALT', action = wezterm.action.ActivateTab(6) },
  { key = '8', mods = 'ALT', action = wezterm.action.ActivateTab(7) },
  { key = '9', mods = 'ALT', action = wezterm.action.ActivateTab(8) },
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


return config
