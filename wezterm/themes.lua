local M = {}

-- Popular
M.gruvbox_dark = 'GruvboxDark'
M.gruvbox_light = 'GruvboxLight'
M.dracula = 'Dracula'
M.one_dark = 'OneDark'
M.nord = 'Nord'
M.tokyo_night = 'Tokyo Night'
M.catppuccin_mocha = 'Catppuccin Mocha'
M.catppuccin_latte = 'Catppuccin Latte'
M.monokai = 'Monokai'
M.kanagawa = 'Kanagawa'
M.rose_pine = 'Rose Pine'
M.everforest_dark = 'Everforest Dark'
M.everforest_light = 'Everforest Light'

-- Solarized
M.solarized_dark = 'Solarized Dark'
M.solarized_light = 'Solarized Light'

-- Tokyo variants
M.tokyo_night_storm = 'Tokyo Night Storm'
M.tokyo_night_moon = 'Tokyo Night Moon'

-- Kanagawa variants
M.kanagawa_dragon = 'Kanagawa Dragon'
M.kanagawa_lotus = 'Kanagawa Lotus'

-- Material variants
M.material = 'Material'
M.material_darker = 'Material Darker'
M.material_ocean = 'Material Ocean'
M.material_palenight = 'Material Palenight'

-- Tomorrow variants
M.tomorrow = 'Tomorrow'
M.tomorrow_night = 'Tomorrow Night'
M.tomorrow_night_blue = 'Tomorrow Night Blue'
M.tomorrow_night_bright = 'Tomorrow Night Bright'
M.tomorrow_night_eighties = 'Tomorrow Night Eighties'

-- Ayu
M.ayu_dark = 'Ayu Dark'
M.ayu_light = 'Ayu Light'
M.ayu_mirage = 'Ayu Mirage'

-- Pencil
M.pencil_dark = 'PencilDark'
M.pencil_light = 'PencilLight'

-- Nightfox family
M.nightfox = 'Nightfox'
M.dayfox = 'Dayfox'
M.dawnfox = 'Dawnfox'
M.duskfox = 'Duskfox'

-- Iceberg
M.iceberg_dark = 'Iceberg Dark'
M.iceberg_light = 'Iceberg Light'

-- Base16 examples
M.base16_default_dark = 'Base16 Default Dark'
M.base16_default_light = 'Base16 Default Light'
M.base16_ocean = 'Base16 Ocean'
M.base16_eighties = 'Base16 Eighties'
M.base16_gruvbox_dark = 'Base16 Gruvbox Dark'
M.base16_material = 'Base16 Material'
M.base16_nord = 'Base16 Nord'
M.base16_solarized_dark = 'Base16 Solarized Dark'
M.base16_solarized_light = 'Base16 Solarized Light'

-- Misc
M.batman = 'Batman'
M.chalk = 'Chalk'
M.dark_plus = 'Dark+'
M.dimmed_monokai = 'DimmedMonokai'
M.molokai = 'Molokai'
M.night_owl = 'Night Owl'
M.oceanic_next = 'Oceanic Next'
M.seti = 'Seti'
M.snazzy = 'Snazzy'
M.synthwave = 'Synthwave'
M.github_dark = 'GitHub Dark'
M.github_light = 'GitHub Light'
M.gotham = 'Gotham'
M.jellybeans = 'Jellybeans'
M.palenight = 'Palenight'
M.rebecca = 'Rebecca'
M.spacegray = 'SpaceGray'
M.spacedust = 'Spacedust'
M.zenburn = 'Zenburn'
M.vividchalk = 'Vividchalk'

M.schemes = {
  Vividchalk = {
    foreground = "#ffffff",
    background = "#000000",
    cursor_bg = "#ffffff",
    cursor_fg = "#000000",
    cursor_border = "#ffffff",

    ansi = {
      "#000000",
      "#d70000",
      "#5fff00",
      "#ffff00",
      "#0087ff",
      "#ff00ff",
      "#00ffff",
      "#e5e5e5",
    },

    brights = {
      "#666666",
      "#ff0000",
      "#87ff00",
      "#ffff5f",
      "#5fafff",
      "#ff5fff",
      "#5fffff",
      "#ffffff",
    },
  },
}

return M
