return {
  "romus204/tree-sitter-manager.nvim",
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    require("tree-sitter-manager").setup({
      -- Default Options
       ensure_installed = 
       { "markdown", "cpp", "python", "c_sharp", "css", "csv", "markdown_inline",
         "c", "dockerfile", "zsh", "bash", "zig", "lua", "go", "python", "html",
         "json", "xml", "git_config", "gitignore", "html_tags", "http", "java",
         "javascript", "vim", "yaml", "hyprlang", "typescript", "git_rebase"},
      -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
      -- auto_install = false, -- if enabled, install missing parsers when editing a new file
      -- highlight = true, -- treesitter highlighting is enabled by default
      -- languages = {}, -- override or add new parser sources
    })
  end
}
