return {
  -- LSP
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "deno",
        "emmet-language-server",
        "golangci-lint",
        "hadolint",
        "sql-formatter",
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
        proto = { "buf_lint" },
        sql = { "sqlfluff" },
        terraform = { "tfsec" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "css",
        "gitignore",
        "just",
        "kdl",
        "make",
        "mermaid",
        "regex",
        "scss",
        "sql",
        "svelte",
        "typescript",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      codelens = {
        enabled = true,
      },
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

  -- Editor
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 300,
      },
    },
  },
}
