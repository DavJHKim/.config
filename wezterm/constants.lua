local wezterm = require 'wezterm'

local M = {}

M.bg_blurred_darker = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-blurred-darker.png'

M.bg_blurred = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-blurred.png'

M.bg_foggy_trees = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-foggy-trees.jpg'

M.bg_image = M.bg_foggy_trees

return M
