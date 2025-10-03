require("config.lazy")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Search settings
vim.opt.ignorecase = true   -- set ic
vim.opt.incsearch = true    -- set is
vim.opt.hlsearch = true     -- set hlsearch

-- Colorscheme 
vim.cmd("colorscheme vim")

-- Line numbers
vim.opt.number = true

-- Command-line completion menu
vim.opt.wildmenu = true

-- Cursor highlighting
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- set the highlight color for both line + column
vim.cmd([[
  highlight CursorLine   cterm=NONE ctermbg=darkgray guibg=#2e2e2e
  highlight CursorColumn cterm=NONE ctermbg=darkgray guibg=#2e2e2e
  highlight CursorLineNr cterm=NONE ctermbg=darkgray guibg=#2e2e2e guifg=#ffffff
]])

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
