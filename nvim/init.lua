require("config.lazy")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Colorscheme
vim.cmd("colorscheme darkblue")

-- Search settings
vim.opt.ignorecase = true   -- set ic
vim.opt.incsearch = true    -- set is
vim.opt.hlsearch = true     -- set hlsearch

-- Line numbers
vim.opt.number = true

-- Command-line completion menu
vim.opt.wildmenu = true

-- Cursor highlighting
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"

-- Highlight cursorline colors
vim.cmd("highlight CursorLine cterm=NONE ctermbg=darkgray guibg=#2e2e2e")

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
