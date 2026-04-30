return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "vaults",
        path = "~/vaults",
      },
      --{
      --  name = "work",
      --  path = "~/vaults/work",
      --},
    },
    daily_notes = {
      enabled = true,
      folder = "daily",
      date_format = "YYYY-MM-DD",
      default_tags = { "journal", "daily" },
    },

    completion = {
      nvim_cmp = true,
    },
  },
}
