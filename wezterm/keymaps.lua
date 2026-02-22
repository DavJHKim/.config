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

    { key = '1', mods = 'ALT', action = act.ActivateTab(0) },
    { key = '2', mods = 'ALT', action = act.ActivateTab(1) },
    { key = '3', mods = 'ALT', action = act.ActivateTab(2) },
    { key = '4', mods = 'ALT', action = act.ActivateTab(3) },
    { key = '5', mods = 'ALT', action = act.ActivateTab(4) },
    { key = '6', mods = 'ALT', action = act.ActivateTab(5) },
    { key = '7', mods = 'ALT', action = act.ActivateTab(6) },
    { key = '8', mods = 'ALT', action = act.ActivateTab(7) },
    { key = '9', mods = 'ALT', action = act.ActivateTab(8) },
  }
end

return M
