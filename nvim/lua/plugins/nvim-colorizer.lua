return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      -- Optional: Configure filetypes or file patterns
      filetypes = { "*" },
      user_default_options = {
        names = true, -- "Blue" etc.
        css = true,
        css_fn = true,
        rgb_fn = true,
        hsl_fn = true,
      },
    },
  },
}
