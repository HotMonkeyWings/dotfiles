local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

Plugins = {
    -- Netrw improvements
    {
        "prichrd/netrw.nvim",
        version = "*",
        laze = false,
    },

    -- Fuzzy finder
    {
        "nvim-telescope/telescope.nvim",
        tag = "nvim-0.6",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },

    -- Formatting
    {
        "jose-elias-alvarez/null-ls.nvim",
        "MunifTanjim/prettier.nvim"
    },

    -- Highlighter
    {
        "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" , "rust", "dart"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
    },

    -- LSP
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lua"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    },

    -- Theme
    {
        "folke/tokyonight.nvim",
    },

    -- Diagflow for LSP Diagnostics
    {
        'dgagn/diagflow.nvim',
        opts = {}
    },
}

require("lazy").setup(Plugins, opts)
