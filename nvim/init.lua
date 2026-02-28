-- Importing config 
require("config.lazy") 
require("config.keymaps")
require("config.nvim-dap")
require("config.appearance")
require("config.os")
require("config.cmp")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Search settings
vim.opt.ignorecase = true -- set ic
vim.opt.incsearch = true -- set is
vim.opt.hlsearch = true -- set hlsearch

-- set nohlsearch while hitting <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Show LSP Diagnostics
vim.diagnostic.config({
  virtual_lines = {
    current_line = true
  }
})

-- Line numbers 
vim.cmd("set number relativenumber")

-- Command-line completion menu 
vim.cmd("set wildmode=list:longest,list:full")

-- Highlight ONLY the current line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"  -- restrict highlight to the number column only
vim.cmd([[
  highlight CursorLineNr cterm=bold ctermfg=yellow guifg=#ffff00
]])

-- Indentation 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

