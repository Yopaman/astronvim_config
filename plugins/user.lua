return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- Colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
    },
  },

  -- Note taking
  { "conornewton/vim-pandoc-markdown-preview", lazy = false },
  {
    "jbyuki/nabla.nvim",
    lazy = true,
  },
  {
    "ekickx/clipboard-image.nvim",
    lazy = false,
    opts = {
      markdown = {
        img_dir = { "src", "img" },
        img_dir_txt = "img",
      },
    },
  },
  {
    "rafamadriz/friendly-snippets",
    lazy = false,
  },
  { "godlygeek/tabular", lazy = false },
  {
    "preservim/vim-markdown",
    lazy = false,
    init = function() vim.g.vim_markdown_folding_disabled = 1 end,
  },
  { "lervag/vimtex" },
  { "vim-pandoc/vim-pandoc-syntax", lazy = false },
  { "folke/zen-mode.nvim" },

  -- Projects
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    name = "project_nvim",
    opts = true,
  },

  { "elkowar/yuck.vim" },

  -- for go html templates syntax --
  { "fatih/vim-go" },

  { "mrjones2014/nvim-ts-rainbow", lazy = false },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function() require("luasnip.loaders.from_vscode").lazy_load() end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    keys = function()
      return {
        { "<tab>", false },
        { "<tab>", false },
        { "<s-tab>", false },
      }
    end,
  },
  {
    -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
      -- modify the mapping part of the table
      local cmp = require "cmp"

      opts.mapping["<Tab>"] = cmp.config.disable
      -- return the new table to be used
      return opts
    end,
  },
  {
    "https://git.sr.ht/~detegr/nvim-bqn",
    lazy = false,
  },
  {
    "mlochbaum/BQN",
    ft = "bqn",
    config = function(plugin) vim.opt.rtp:append(plugin.dir .. "/editors/vim") end,
  },
  {
    "alaviss/nim.nvim",
    ft = "nim",
  },
}
