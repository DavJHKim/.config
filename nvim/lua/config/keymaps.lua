-- Reload entire Neovim config (LazyVim / lazy.nvim friendly)
vim.keymap.set("n", "<leader>rr", function()
  -- clear cached Lua modules from your config so require() reloads them
  for name, _ in pairs(package.loaded) do
    if name:match("^config") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end

  -- re-run your init.lua (LazyVim uses this to bootstrap everything)
  dofile(vim.fn.stdpath("config") .. "/init.lua")

  print("🔄 Config reloaded")
end, { desc = "Reload config" })

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fc', function()
  telescope.find_files({
    prompt_title = "Neovim Config",
    cwd = vim.fn.stdpath('config'),
  })
end, { desc = "Search Neovim Config" })

-- Telescope delete buffers
local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      i = { ["<C-d>"] = actions.delete_buffer },
      n = { ["dd"] = actions.delete_buffer },
    },
  },
})

-- LSP keymaps (buffer-local, only when LSP attaches)
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true, noremap = true }

    -- Navigation
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

    -- Info
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Actions
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Diagnostics
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
  end,
})

-- DAP keymaps
local dap = require("dap")
local dapui = require("dapui")

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dgb", dap.run_to_cursor)
-- Eval var under cursor
vim.keymap.set("n", "<leader>d?", function()
  dapui.eval(nil, { enter = true })
end)

vim.keymap.set("n", "<Leader>dp", require("dap.ui.widgets").preview)

vim.keymap.set("n", "<leader>du", function()
  dapui.toggle()
end, { desc = "DAP UI Toggle" })

vim.keymap.set("n", "<leader>d1", dap.continue)
vim.keymap.set("n", "<leader>d2", dap.step_over)
vim.keymap.set("n", "<leader>d3", dap.step_into)
vim.keymap.set("n", "<leader>d4", dap.step_out)
vim.keymap.set("n", "<leader>d5", dap.step_back)
vim.keymap.set("n", "<leader>dr", dap.repl.open)
vim.keymap.set("n", "<leader>drr", dap.restart)
vim.keymap.set("n", "<leader>dq", function()
  dap.terminate()
end, { desc = "DAP: Quit debug session" })
vim.keymap.set("n", "<leader>dQ", function()
  dap.disconnect({ terminateDebuggee = true })
end, { desc = "DAP: Force stop" })
