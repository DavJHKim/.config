local wezterm = require 'wezterm'

local M = {}

-- Variables 
M.bg_blurred_darker = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-blurred-darker.png'

M.bg_blurred = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-blurred.png'

M.bg_foggy_trees = wezterm.home_dir
  .. '/.config/wezterm/assets/bg-foggy-trees.jpg'

M.a_foggy_landscape_with_trees_and_grass = wezterm.home_dir
  .. '/.config/wezterm/assets/a_foggy_landscape_with_trees_and_grass.jpg'

M.a_snowy_mountain_tops = wezterm.home_dir
  .. '/.config/wezterm/assets/a_snowy_mountain_tops.jpg'

M.a_bridge_with_clouds_in_the_sky = wezterm.home_dir
  .. '/.config/wezterm/assets/a_bridge_with_clouds_in_the_sky.jpg'

-- Changing image
M.bg_image = M.a_bridge_with_clouds_in_the_sky

-- Apppearance
M.brightness = 1.0
M.hue = 1.0
M.saturation = 1.0

if M.bg_image == M.a_snowy_mountain_tops then
  M.brightness = 0.05 
elseif M.bg_image == M.bg_foggy_trees then
  M.brightness = 0.05 
elseif M.bg_image == M.a_foggy_landscape_with_trees_and_grass then
  M.brightness = 0.05
elseif M.bg_image == M.a_bridge_with_clouds_in_the_sky then
  M.brightness = 0.02
end

return M
