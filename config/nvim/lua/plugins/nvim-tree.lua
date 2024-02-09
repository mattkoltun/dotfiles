-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- nmap t :NvimTreeToggle<CR>
-- nmap <silent> T :NvimTreeFindFileToggle!<cr>
return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "t", "<cmd>NvimTreeToggle<cr>", mode = { "n" }, desc = "Toggle Nvim Tree" },
    { "T", "<cmd>NvimTreeFindFileToggle!<cr>", mode = { "n" }, desc = "Toggle Nvim Tree" },
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
        git_clean = false,
        no_buffer = false,
        custom = { "__pycache__", ".pyc$", ".git" },
      },
      view = {
        width = 30,
        float = {
          quit_on_focus_loss = true,
        },
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        file_popup = {
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = true,
          resize_window = true,
          window_picker = {
            enable = true,
            picker = "default",
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
    })
  end,
}
