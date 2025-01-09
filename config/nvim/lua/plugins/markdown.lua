-- return {
--   "iamcco/markdown-preview.nvim",
--   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--   ft = { "markdown" },
--   build = function()
--     vim.fn["mkdp#util#install"]()
--   end,
-- }

return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },

  build = "cd app && npm install",
  config = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle <CR>", {})
  end,
}
