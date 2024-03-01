return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    table.insert(opts.ensure_installed, "black")
    table.insert(opts.ensure_installed, "isort")
    opts.formatters = {
      black = { args = { "--quiet", "-" }, stdin = true },
      isort = { args = { "-" }, stdin = true },
    }
  end,
}
