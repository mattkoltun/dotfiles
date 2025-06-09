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
        -- pyright = {
        --   before_init = function(params, config)
        --     local util = require("lspconfig/util")
        --     local root_dir = util.find_git_ancestor(params.root_uri) or vim.fn.getcwd()
        --     local python_path = root_dir .. "/.venv/bin/python"
        --     if vim.fn.executable(python_path) == 1 then
        --       config.settings.python.pythonPath = python_path
        --     end
        --   end,
        --   settings = {
        --     python = {
        --       analysis = {
        --         autoSearchPaths = true,
        --         useLibraryCodeForTypes = true,
        --         diagnosticMode = "workspace",
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
