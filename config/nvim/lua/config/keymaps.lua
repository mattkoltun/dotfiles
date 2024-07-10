-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- This file is automatically loaded by lazyvim.plugins.config
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "jj", "<cmd>noh<cr><esc>", { desc = "Exit insert mode" })

map("n", "<leader>rc", "<cmd>source $MYVIMRC <cr>", { desc = "Reload config" })

-- navigate panes
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to tmux left window", silent = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to tmux lower window", silent = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to tmux upper window", silent = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to tmux right window", silent = true })

-- buffers
map("n", "<C-p>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<C-n>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Clear search
map("n", "<leader>n", "<cmd>noh<cr>", { desc = "Deselect search" })

-- Search
map({ "n", "x" }, "<leader>fw", "*N", { desc = "Search word under cursor" })
