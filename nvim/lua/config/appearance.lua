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


