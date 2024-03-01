return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = { "black", "isort" },
    },
    formatter_opts = {
      black = { args = { "--quiet", "-" }, stdin = true },
      isort = { args = { "-" }, stdin = true },
    },
  },
}
