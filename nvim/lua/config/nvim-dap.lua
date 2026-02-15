-- lua/configs/nvim-dap.lua
-- ...

local mason_path = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe"
-- local explicit_path = "$HOME/Documents/debuggers/netcoredbg/netcoredbg"

local netcoredbg_adapter = {
  type = "executable",
  command = mason_path,
  args = { "--interpreter=vscode" },
}

local dap = require("dap")
local dapui = require("dapui")

dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
dap.adapters.coreclr = netcoredbg_adapter    -- needed for unit test debugging

vim.fn.sign_define("DapBreakpoint", {
  text = "●",
  texthl = "DapBreakpoint",
  numhl = "DapBreakpoint",
})

vim.api.nvim_set_hl(0, "DapBreakpoint", {
  fg = "#e51400", -- VS red
})

vim.fn.sign_define("DapStopped", {
  text = "▶",
  texthl = "DiagnosticWarn",
  linehl = "DapStoppedLine",
  numhl = "DiagnosticWarn",
})

vim.api.nvim_set_hl(0, "DapStoppedLine", {
  bg = "#3c3f1f", -- tweak for your colorscheme
})

dapui.setup({
  layouts = {
    {
      elements = {
        { id = "breakpoints", size = 0.2 },
        { id = "scopes",      size = 0.8 }, -- variables
      },
      size = 40,
      position = "left",
    },
  },
})

local dotnet = require("config.nvim-dap-dotnet")

dap.configurations.cs = {
  {
    type = "coreclr",
    name =  "launch - netcoredbg",
    request = "launch",
    cwd = function()
        return vim.fn.getcwd() .. "/bin/Debug/net7.0/"
    end,
    env = {
      ASPNETCORE_ENVIRONMENT = function()
        return "Development"
      end,
      DOTNET_ENVIRONMENT = function()
        return "Development"
      end,
    },
    program = function()
      return dotnet.build_dll_path()
    end
  }
}
