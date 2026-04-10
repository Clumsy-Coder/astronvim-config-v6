-- using plugins from `mini`
-- https://github.com/echasnovski/mini.nvim
-- https://github.com/Clumsy-Coder/astronvim-config-v5/blob/9572b5d/lua/plugins/mini-cursorword.lua
--
---@type LazySpec
return {
  -- Automatic highlighting of word under cursor
  -- https://github.com/echasnovski/mini.cursorword
  {
    "echasnovski/mini.cursorword",
    config = function() require("mini.cursorword").setup() end,
  },
}
