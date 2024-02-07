local function system_open(path)
  -- TODO: REMOVE WHEN DROPPING NEOVIM <0.10
  if vim.ui.open then
    return vim.ui.open(path)
  end
  local cmd
  if vim.fn.has("mac") == 1 then
    cmd = { "open" }
  elseif vim.fn.has("win32") == 1 then
    if vim.fn.executable("rundll32") then
      cmd = { "rundll32", "url.dll,FileProtocolHandler" }
    else
      cmd = { "cmd.exe", "/K", "explorer" }
    end
  elseif vim.fn.has("unix") == 1 then
    if vim.fn.executable("wslview") == 1 then
      cmd = { "wslview" }
    elseif vim.fn.executable("xdg-open") == 1 then
      cmd = { "xdg-open" }
    end
  end
  if not cmd then
    require("lazyvim.util").notify("Available system opening tool not found!", {
      level = vim.log.levels.ERROR,
    })
  end
  if not path then
    path = vim.fn.expand("<cfile>")
  elseif not path:match("%w+:") then
    path = vim.fn.expand(path)
  end
  vim.fn.jobstart(vim.list_extend(cmd, { path }), { detach = true })
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    commands = {
      system_open = function(state)
        system_open(state.tree:get_node():get_id())
      end,
    },
    window = {
      mappings = {
        O = "system_open",
      },
    },
  },
}
