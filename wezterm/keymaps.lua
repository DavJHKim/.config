local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.get_keys()
  return {
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

    { key = "v", mods = "CTRL|SHIFT|ALT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s", mods = "CTRL|SHIFT|ALT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },

    { key = "w", mods = "CTRL|SHIFT|ALT", action = act.CloseCurrentPane { confirm = true } },

    { key = 'b', mods = 'CTRL|SHIFT', action = act.EmitEvent('toggle-tab-bar')},

    {
      key = "Enter",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ToggleFullScreen,
    },

    {
      key = "Enter",
      mods = "ALT",
      action = wezterm.action.DisableDefaultAssignment,
    },
  }
end

return M
