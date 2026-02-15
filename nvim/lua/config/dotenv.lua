local M = {}

local function parse_env_file(path)
  local env = {}

  local file = io.open(path, "r")
  if not file then
    return env
  end

  for line in file:lines() do
    -- ignore comments and empty lines
    if not line:match("^%s*#") and line:match("=") then
      local key, value = line:match("^%s*([^=]+)%s*=%s*(.*)%s*$")
      if key and value then
        -- remove surrounding quotes if present
        value = value:gsub('^"(.*)"$', "%1")
        value = value:gsub("^'(.*)'$", "%1")

        env[key] = value
        vim.env[key] = value -- optional: export to vim.env
      end
    end
  end

  file:close()
  return env
end

-- Load .env from nvim config root
local config_path = vim.fn.stdpath("config")
M.values = parse_env_file(config_path .. "/.env")

-- Load Variables here
print(M.values.TEST)

return M
