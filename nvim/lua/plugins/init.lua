return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "emmet-ls",
        "prettierd",
        "gopls",
        "prisma-language-server",
        "clangd",
        "clang-format"
      },
    },
    config = function()
      require("mason").setup()
    end,
  },
  {
    'prisma/vim-prisma'
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event="VeryLazy",
    config = function ()
      require "configs.null-ls"
    end
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
