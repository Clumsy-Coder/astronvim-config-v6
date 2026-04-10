-- open files from terminal in current neovim instance
-- https://github.com/willothy/flatten.nvim
-- https://github.com/Clumsy-Coder/astronvim-config-v5/blob/9572b5d/lua/plugins/flatten.lua
--
---@type LazySpec
return {
  "willothy/flatten.nvim",
  lazy = false,
  priority = 99999,
  opts = {
    window = {
      open = "vsplit",
    },
  },
}
