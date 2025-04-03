return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "jdtls" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {}, -- uses default config
      },
    },
  },
}
