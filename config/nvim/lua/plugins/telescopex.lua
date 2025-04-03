return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", LazyVim.pick("live_grep", { hidden = true }), desc = "My live grep" },
    { "<leader>rg", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Word (cwd)" },
    { "<leader><space>", LazyVim.pick("files", { hidden = true }), desc = "My find files" },
  },
  -- opts = function(_, opts)
  --   local actions = require("telescope.actions")
  --   local action_state = require("telescope.actions.state")
  --   local builtin = require("telescope.builtin")
  --
  --   local function toggle_hidden(prompt_bufnr)
  --     local current_picker = action_state.get_current_picker(prompt_bufnr)
  --     local finder = current_picker.finder
  --
  --     local new_hidden = not finder.hidden
  --     finder.hidden = new_hidden
  --
  --     -- Refresh with the new value
  --     builtin.find_files({
  --       hidden = new_hidden,
  --       no_ignore = true,
  --       no_ignore_parent = true,
  --     })
  --   end
  --
  --   opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
  --     find_files = {
  --       hidden = true,
  --       no_ignore = true,
  --       no_ignore_parent = true,
  --       mappings = {
  --         i = {
  --           ["<C-h>"] = toggle_hidden,
  --           ["<C-n>"] = actions.move_selection_next,
  --           ["<C-p>"] = actions.move_selection_previous,
  --           ["<C-j>"] = actions.cycle_history_next,
  --           ["<C-k>"] = actions.cycle_history_prev,
  --           ["<C-f>"] = actions.preview_scrolling_down,
  --           ["<C-b>"] = actions.preview_scrolling_up,
  --         },
  --       },
  --     },
  --   })
  --
  --   opts.defaults.layout_config.prompt_position = "top"
  --   opts.defaults.sorting_strategy = "ascending"
  --
  --   return opts
  -- end,
  opts = {
    defaults = {
      -- layout_strategy = "vertical",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      -- winblend = 0,
      mappings = {
        i = {
          ["<C-n>"] = "move_selection_next",
          ["<C-p>"] = "move_selection_previous",
          ["<C-j>"] = "cycle_history_next",
          ["<C-k>"] = "cycle_history_prev",
          ["<C-f>"] = "preview_scrolling_down",
          ["<C-b>"] = "preview_scrolling_up",
        },
      },
    },
  },
}
