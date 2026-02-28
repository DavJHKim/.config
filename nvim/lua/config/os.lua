-- Operating System specific
local os_name = vim.loop.os_uname().sysname

if os_name == "Windows_NT" then
  -- pwsh
  vim.opt.shell = "pwsh.exe"
  vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellquote = '"'
  vim.opt.shellxquote = ""
elseif os_name == "Darwin" then
elseif os_name == "Linux" then
end
