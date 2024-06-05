return {
  -- LSP
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "emmet-language-server",
        "golangci-lint",
        "hadolint",
        "sqlfluff",
        "sql-formatter",
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
        "css",
        "just",
        "gitignore",
        "make",
        "nu",
        "regex",
        "scss",
        "svelte",
        "kdl",
      },
    },
    dependencies = {
      { "nushell/tree-sitter-nu" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- codelens = {
      --   enabled = true,
      -- },
      inlayhint = {
        enabled = false,
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["sql"] = { "sql_formatter" },
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
      current_line_blame_opts = {
        delay = 300,
      },
      current_line_blame_formatter_opts = {
        relative_time = true,
      },
    },
  },
}
