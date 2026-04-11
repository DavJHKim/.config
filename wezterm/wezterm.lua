local wezterm = require("wezterm")
local bg_constants = require("bg-constants")
local themes = require("themes")
local config = wezterm.config_builder()
local keymaps = require("keymaps")

-- Checking for Operating System
local target = wezterm.target_triple

if target:find("windows") then
  print("Running on Windows")
  config.default_prog = { "pwsh.exe", "-NoLogo" }
  config.win32_system_backdrop = "Acrylic" 
elseif target:find("apple") then
  print("Running on macOS")
  config.macos_window_background_blur = 10
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
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false
--config.font = wezterm.font('Monocraft')
config.font = wezterm.font('JetBrainsMono Nerd Font')

-- Background
--config.window_background_image = bg_constants.bg_image
config.window_background_opacity = 0.8
config.window_background_image_hsb = {
  brightness = bg_constants.brightness,  
  hue = bg_constants.hue,
  saturation = bg_constants.saturation,
}

-- Grubox theme for tab bar 
--config.colors = {
--  tab_bar = {
--    background = "#282828", -- Gruvbox dark background
--
--    active_tab = {
--      bg_color = "#fabd2f", -- Gruvbox yellow
--      fg_color = "#282828", -- Dark text
--      intensity = "Bold",
--    },
--
--    inactive_tab = {
--      bg_color = "#3c3836", -- Dark gray
--      fg_color = "#ebdbb2", -- Light foreground
--    },
--      bg_color = "#504945", -- Slightly lighter gray
--      fg_color = "#fbf1c7", -- Brighter foreground
--      italic = true,
--    },
--
--    new_tab = {
--      bg_color = "#3c3836",
--      fg_color = "#ebdbb2",
--    },
--
--    new_tab_hover = {
--      bg_color = "#458588", -- Gruvbox blue
--      fg_color = "#fbf1c7",
--      italic = true,
--    },
--  },
--}

local tab_bg = "#1a1a1a" -- tweak this

config.colors = {
  tab_bar = {
    background = "#2a2a2a",

    active_tab = {
      bg_color = "#2a2a2a",
      fg_color = "#ffffff",
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = tab_bg,
      fg_color = "#888888",
    },

    new_tab = {
      bg_color = tab_bg,
      fg_color = "#888888",
    },

    new_tab_hover = {
      bg_color = "#303030",
      fg_color = "#ffffff",
      italic = false,
    },
  },
}

-- Themes
config.color_schemes = themes.schemes
config.color_scheme = themes.gruvbox_dark

-- keymaps
config.keys = keymaps.get_keys() 

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
