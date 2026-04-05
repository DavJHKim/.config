-- appearance.lua

-- =========================
-- Colorscheme
-- =========================
vim.cmd("colorscheme gruvbox")

-- =========================
-- Transparency toggle
-- =========================
local M = {}

M.transparent = true

function M.apply_transparency()
  if not M.transparent then
    return
  end

  local groups = {
    -- main UI
    "Normal",
    "NormalNC",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",

    -- splits / borders
    "VertSplit",
    "WinSeparator",
    "FloatBorder",

    -- line numbers
    "LineNr",
    "CursorLineNr",

    -- cursor line
    "CursorLine",
    "CursorLineSign",
    "CursorLineFold",

    -- statusline / UI
    "StatusLine",
    "StatusLineNC",
    "MsgArea",

    -- popup menu
    "Pmenu",
    "PmenuSel",
    "PmenuSbar",
    "PmenuThumb",

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

-- =========================
-- Autocmd (important)
-- =========================
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.schedule(function()
      M.apply_transparency()
    end)
  end,
})

-- =========================
-- Manual toggle keybind
-- =========================
vim.keymap.set("n", "<leader>ut", function()
  M.transparent = not M.transparent
  vim.cmd("colorscheme " .. vim.g.colors_name)
end, { desc = "Toggle transparency" })

-- =========================
-- Initial apply
-- =========================
vim.schedule(function()
  M.apply_transparency()
end)

return M
