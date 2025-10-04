require("config.lazy")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Search settings
vim.opt.ignorecase = true -- set ic
vim.opt.incsearch = true -- set is
vim.opt.hlsearch = true -- set hlsearch

-- Colorscheme
vim.cmd("colorscheme vim")

-- Line numbers 
vim.opt.number = true

-- Command-line completion menu 
vim.opt.wildmenu = true

-- Highlight ONLY the current line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"  -- restrict highlight to the number column only
vim.cmd([[
  highlight CursorLineNr cterm=bold ctermfg=red guifg=#ff0000
]])

-- Indentation 
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.expandtab = true
