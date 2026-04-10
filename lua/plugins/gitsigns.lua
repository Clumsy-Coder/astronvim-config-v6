-- view git changes in buffers
-- https://github.com/lewis6991/gitsigns.nvim
-- https://github.com/Clumsy-Coder/astronvim-config-v5/blob/9572b5d/lua/plugins/gitsigns.lua
--
---@type LazySpec
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
    },
  },
}
