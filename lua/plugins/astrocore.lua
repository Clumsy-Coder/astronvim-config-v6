if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        mdx = "markdown.mdx",
        qmd = "markdown",
      },
      filename = {
        ["Brewfile"] = "ruby",
        ["dockerfile"] = "dockerfile",
        [".yamllint"] = "yaml",
      },
      pattern = {
        [".*%.tmux.conf"] = "tmux", -- files in dotfiles/tools/tmux/ folder
        [".env.*"] = "conf",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap

        -- color column
        colorcolumn = { 100 },

        -- whitespace characters
        list = true, -- show whitespace characters
        listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣", eol = "↲" },
        showbreak = "↪ ", -- string to put at the start of lines that have been wrapped

        -- spellfile
        spell = true, -- sets vim.opt.spell
        spelllang = "en_ca",
        spellfile = vim.fn.expand "~/.config/nvim/spell/en.utf-8.add",

        -- cursor style
        -- setting cursor style in different modes
        -- check current guicursor value with command ':set guicursor'
        -- https://github.com/AstroNvim/AstroNvim/issues/903#issuecomment-1219860755
        -- https://vim.fandom.com/wiki/Configuring_the_cursor
        -- i = insert
        -- v = visual
        -- c = command
        -- n = normal
        -- guicursor = "n-v-c-i-sm:block,ci-ve:ver25,r-cr-o:hor20",

        splitkeep = "screen",
        conceallevel = 1,

        -- The minimal number of screen columns to keep to the left and to the right of the cursor
        -- https://unix.stackexchange.com/a/678286/644926
        sidescrolloff = 50,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
