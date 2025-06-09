return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-wave",
      -- vim.cmd.colorscheme("jellybeans")
      colorscheme = "catppuccin-macchiato",
    },
  },
  -- THEMES --
  { "bcicen/vim-vice", lazy = true },
  { "bellma101/vim-snazzy", lazy = true },
  { "dikiaap/minimalist", lazy = true },
  { "dracula/vim", lazy = true },
  { "flazz/vim-colorschemes", lazy = true },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    config = function()
      require("onedark").setup({
        style = "warm",
      })
      require("onedark").load()
    end,
  },
  { "mhartington/oceanic-next", lazy = true },
  { "mhinz/vim-janah", lazy = true },
  { "rafi/awesome-vim-colorschemes", lazy = true },
  { "tomasiser/vim-code-dark", lazy = true },
  { "tstelzer/welpe.vim", lazy = true },
  { "zacanger/angr.vim", lazy = true },
  { "victorze/foo", lazy = true },
  { "wadackel/vim-dogrun", lazy = true },
  { "sainnhe/edge", lazy = true },
  { "arzg/vim-colors-xcode", lazy = true },
  { "morhetz/gruvbox", lazy = true },
  { "ellisonleao/gruvbox.nvim" },
  { "sonph/onehalf", lazy = true },
  { "NLKNguyen/papercolor-theme", lazy = true },
  { "jnurmine/Zenburn", lazy = true },
  { "chriskempson/base16-vim", lazy = true },
  { "jacoborus/tender.vim", lazy = true },
  { "gosukiwi/vim-atom-dark", lazy = true },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup({
        compile = true, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        -- overrides = function(colors) -- add/modify highlights
        --   return {}
        -- end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  { "lewis6991/moonlight.vim", lazy = true },
  { "sainnhe/sonokai", lazy = true },
  { "wadackel/vim-dogrun", lazy = true },
  { "megantiu/true.vim", lazy = true },
  { "artanikin/vim-synthwave84", lazy = true },
  { "gryf/wombat256grf", lazy = true },
  { "franbach/miramare", lazy = true },
  { "dunstontc/vim-vscode-theme", lazy = true },
  { "tomasiser/vim-code-dark", lazy = true },
  { "sainnhe/sonokai", lazy = true },
  { "sainnhe/everforest", lazy = true },
  { "embark-theme/vim", name = "embark", lazy = true },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  --   {
  --     "wtfox/jellybeans.nvim",
  --     priority = 1000,
  --     config = function()
  --       require("jellybeans").setup()
  --     end,
  --   },
}
