return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_z = {
          { "o:encoding", fmt = string.upper },
        },
      },
    },
  },
}
