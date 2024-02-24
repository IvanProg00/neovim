return {
  -- LSP
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "hadolint",
        "golangci-lint",
        "sqlfluff",
        "tfsec",
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        go = { "golangcilint" },
        sql = { "sqlfluff" },
        terraform = { "tfsec" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "make",
        "svelte",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {},
      },
    },
  },

  -- Tests
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-plenary",
      "rouge8/neotest-rust",
      "nvim-neotest/neotest-go",
    },
    opts = {
      adapters = {
        "neotest-plenary",
        "neotest-rust",
        "neotest-go",
      },
    },
  },

  -- Editor
  { "echasnovski/mini.indentscope", enabled = false },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = { enabled = true },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {},
    },
  },

  -- Languages
  -- TODO: Delete when will be available just in "nvim-treesitter/nvim-treesitter"
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
}
