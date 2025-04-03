return {
  "neovim/nvim-lspconfig",
  opts = {
    format = {
      formatting_options = nil,
      timeout_ms = 1000,
      format_on_save = {
        enabled = true,
        allow_filetypes = { "java" },
      },
    },
  },
}
