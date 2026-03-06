return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_strategy = "center",
        layout_config = {
          width = 0.6,
          height = 0.4,
        },
        border = true,
        winblend = 10,
      },
    })
  end
}
