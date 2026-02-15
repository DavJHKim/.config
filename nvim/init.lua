-- Lazy 
require("config.lazy") 
require("config.keymaps")
require("config.nvim-dap-dotnet")
require("config.nvim-dap")

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Colorscheme & Transparency
vim.cmd("colorscheme retrobox")

local function make_transparent()
  local groups = {
    -- main UI
    "Normal",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",

    -- line numbers
    "LineNr",
    "CursorLineNr",

    -- cursor line
    "CursorLine",
    "CursorLineSign",
    "CursorLineFold",

    -- floats
    "FloatBorder",

    -- telescope
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptNormal",
    "TelescopePromptBorder",
    "TelescopeResultsNormal",
    "TelescopeResultsBorder",
    "TelescopePreviewNormal",
    "TelescopePreviewBorder",

    -- diagnostics
    "DiagnosticVirtualTextError",
    "DiagnosticVirtualTextWarn",
    "DiagnosticVirtualTextInfo",
    "DiagnosticVirtualTextHint",
    "DiagnosticSignError",
    "DiagnosticSignWarn",
    "DiagnosticSignInfo",
    "DiagnosticSignHint",

    -- gitsigns
    "GitSignsAdd",
    "GitSignsChange",
    "GitSignsDelete",
    "GitSignsAddNr",
    "GitSignsChangeNr",
    "GitSignsDeleteNr",
    "GitSignsAddLn",
    "GitSignsChangeLn",
    "GitSignsDeleteLn",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = make_transparent,
})

make_transparent()

-- pwsh
--vim.opt.shell = "pwsh.exe"
--vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
--vim.opt.shellquote = '"'
--vim.opt.shellxquote = ""

-- SQL Server
vim.g.dbs = {
    sql_server_dev = os.getenv("SQL_SERVER_DEV")
}

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

-- Autocomplete 
local cmp = require("cmp")
cmp.setup.filetype({"sql", "mysql", "plsql", "cs", "lua"},{
    sources = cmp.config.sources({
        { name = "vim-dadbod-completion" },
        { name = "nvim_lsp"},
    }, {
        { name = "buffer" },
    })
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

