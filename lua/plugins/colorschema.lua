return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm",
      on_highlights = function(hl, c)
        hl.LineNrAbove = {
          fg = c.fg_dark,
        }
        hl.LineNrBelow = {
          fg = c.fg_dark,
        }
      end,
    },
  },

  -- Select theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
}
