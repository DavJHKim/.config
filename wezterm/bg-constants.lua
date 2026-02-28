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

M.a_landscape_with_mountains_and_trees = wezterm.home_dir
  .. '/.config/wezterm/assets/a_landscape_with_mountains_and_trees.jpg'

M.a_dark_alleyway_with_a_brick_building_and_a_window = wezterm.home_dir
  .. '/.config/wezterm/assets/a_dark_alleyway_with_a_brick_building_and_a_window.jpg'

M.a_fish_swimming_in_water = wezterm.home_dir
  .. '/.config/wezterm/assets/a_fish_swimming_in_water.png'

M.the_great_wave = wezterm.home_dir
  .. '/.config/wezterm/assets/the_great_wave.jpg'

M.misaka_pass = wezterm.home_dir
  .. '/.config/wezterm/assets/misaka_pass.jpg'

M.pires = wezterm.home_dir
  .. '/.config/wezterm/assets/pires.jpg'

M.powerline = wezterm.home_dir
  .. '/.config/wezterm/assets/powerline.png'

-- Changing image
M.bg_image = M.powerline

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
elseif M.bg_image == M.a_fish_swimming_in_water then 
  M.brightness = 0.05
elseif M.bg_image == M.a_dark_alleyway_with_a_brick_building_and_a_window then
  M.brightness = 0.05
elseif M.bg_image == M.a_landscape_with_mountains_and_trees then
  M.brightness = 0.02
elseif M.bg_image == M.the_great_wave then
  M.brightness = 0.02
elseif M.bg_image == M.misaka_pass then
  M.brightness = 0.02
elseif M.bg_image == M.pires then
  M.brightness = 0.08
elseif M.bg_image == M.powerline then
  M.brightness = 0.02
end

return M
