return {
  "ggandor/leap.nvim",
  lazy = true,
  event = "VeryLazy",
  keys = {
    { "r", mode = { "n", "x", "o" }, desc = "Leap forward to" },
    { "R", mode = { "n", "x", "o" }, desc = "Leap backward to" },
    { "gr", mode = { "n", "x", "o" }, desc = "Leap from windows" },
  },
  config = function(_, opts)
    local leap = require("leap")
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(true)
    vim.keymap.del({ "x", "o" }, "x")
    vim.keymap.del({ "x", "o" }, "X")
  end,
}
