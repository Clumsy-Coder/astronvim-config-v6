-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    -- colorscheme = "astrodark",
    colorscheme = "catppuccin",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    -- obtained from:
    --    https://github.com/datamonsterr/astronvim_config/blob/67bdd62/icons.lua
    --    https://github.com/AstroNvim/AstroNvim/blob/0fee587489/lua/configs/cmp.lua
    --    https://github.com/Clumsy-Coder/astronvim-config-v5/commit/c10e7df0f7e8c2a1686fd67815070f677be05105
    --
    -- https://github.com/microsoft/vscode/blob/main/src/vs/base/common/codicons.ts
    -- https://github.com/microsoft/vscode/blob/84ba0e1/src/vs/base/common/codicons.ts
    -- https://jdhao.github.io/2020/10/07/nvim_insert_unicode_char/#use-ctrl-v-to-insert-character
    -- go to the above and then enter <c-v>u<unicode or hexcode> and the symbold should appear
    -- or go here and upload the font file: https://mathew-kurian.github.io/CharacterMap/
    -- find more here: https://www.nerdfonts.com/cheat-sheet
    --   פּ ﯟ   蘒練 some other good icons
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
      -- used by plugin `folke/todo-comments.nvim`
      TodoDone = " ",
      TodoFix = " ",
      TodoHack = " ",
      TodoNote = " ",
      TodoPerformance = " ",
      -- TodoTest = "ﭧ ",
      TodoTest = " ",
      Todo = " ",
      TodoWarn = " ",
    },
  },
}
