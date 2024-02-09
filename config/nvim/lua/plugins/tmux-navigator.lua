return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    event = "VeryLazy",
    kays = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", mode = { "n" }, desc = "Go to tmux left window", silent = true },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", mode = { "n" }, desc = "Go to tmux lower window", silent = true },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", mode = { "n" }, desc = "Go to tmux upper window", silent = true },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", mode = { "n" }, desc = "Go to tmux right window", silent = true },
    },
  },
}
