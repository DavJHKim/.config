local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = true
config.tab_max_width = 32
config.adjust_window_size_when_changing_font_size = false

-- Classic tmux green theme
config.colors = {
  tab_bar = {
    background = "#00ff00", -- The "empty" space of the bar is now green

    active_tab = {
      bg_color = "#00ff00", -- Green background
      fg_color = "#000000", -- Black text
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "#00ff00", -- Slightly darker green for inactive
      fg_color = "#000000", -- Black text
    },

    inactive_tab_hover = {
      bg_color = "#00ee00",
      fg_color = "#000000",
    },

    new_tab = {
      bg_color = "#00ff00",
      fg_color = "#000000",
    },
  },
}

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
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


return config
