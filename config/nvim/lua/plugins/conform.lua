return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", "isort" },
        java = { "google_java_format" },
      },
      formatter_opts = {
        black = { args = { "--quiet", "-" }, stdin = true },
        isort = { args = { "-" }, stdin = true },
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
}
