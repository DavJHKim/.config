return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  opts = {
    legacy_commands = false,

    workspaces = {
      {
        name = "vaults",
        path = "~/vaults",
      },
    },

    daily_notes = {
      enabled = true,
      folder = "time/daily",
      date_format = "YYYY-MM-DD",
      default_tags = { "daily-notes", "calendar", "journal", "daily" },
      
    },

    completion = {
      nvim_cmp = true,
    },

    -- IMPORTANT: prevent race condition with oil.nvim
    ui = {
      enable = false,
    },

    -- (extra safety if your version still uses footer separately)
    footer = {
      enabled = false,
    },
  },
}
