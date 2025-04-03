return {
  {
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
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google_java_format" },
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
}
