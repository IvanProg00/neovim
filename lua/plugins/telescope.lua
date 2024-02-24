return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")

      opts.defaults.layout_config = { prompt_position = "top" }
      opts.defaults.sorting_strategy = "ascending"
      opts.defaults.mappings.i["<C-k>"] = actions.cycle_history_prev
      opts.defaults.mappings.i["<C-j>"] = actions.cycle_history_next
      opts.defaults.mappings.i["<C-Up>"] = nil
      opts.defaults.mappings.i["<C-Down>"] = nil
    end,
  },
}
