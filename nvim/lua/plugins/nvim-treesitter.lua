return {
  "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/playground",
    },
    build = ":TSUpdate", -- auto-download parsers
    event = { "BufReadPost", "BufNewFile" },
    config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua", "vim", "vimdoc", "bash", "python", "javascript",
        "typescript", "c", "cpp", "c_sharp", "json", "yaml",
      }, -- choose the languages you need
      auto_install = true,
    })
  end,
}
