return {
  "echasnovski/mini.pairs",
  version = "*", -- optional, keeps it stable
  event = "InsertEnter",
  config = function()
    require("mini.pairs").setup()
  end,
}
