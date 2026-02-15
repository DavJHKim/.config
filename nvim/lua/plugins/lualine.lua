return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for icons
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_z = {
          {
            function()
              return os.date("%H:%M") -- 24-hour time
            end,
            icon = "", -- optional icon
          },
          "location",
        },
      },
    })
  end,
}
