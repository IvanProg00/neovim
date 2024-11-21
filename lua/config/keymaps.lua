local map = vim.keymap.set

map({ "n", "v" }, "<leader>sx", function()
  local grug = require("grug-far")
  local path = vim.fn.expand("%")
  grug.open({
    transient = true,
    prefills = {
      paths = path,
    },
  })
end, { desc = "Replace current file" })
