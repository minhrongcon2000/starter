return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    server = {
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    },
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "jdtls",
        "pyright",
        "black",
        "isort",
        "rust-analyzer",
        "gopls",
        "gofumpt",
        "golines",
        "goimports-reviser",
        "helm-ls",
        "typescript-language-server",
        "ruff",
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    lazy = false,
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      return require "configs.none_ls"
    end,
    lazy = false,
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "java",
        "python",
        "rust",
        "terraform",
        "hcl",
        "helm",
        "go",
        "yaml",
        "dockerfile",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  { "towolf/vim-helm", ft = "helm" },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function()
  --     local M = require "configs.cmp"
  --     table.insert(M.sources, { name = "crates" })
  --     return M
  --   end,
  -- },
}
