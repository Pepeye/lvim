-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.lsp.diagnostics.virtual_text = false
lvim.colorscheme = "tokyonight"


-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings.l.o = { "<cmd>SymbolsOutline<cr>", "Outline" }
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
lvim.builtin.which_key.mappings["R"] = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["r"] = {
    name = "Rust Analyzer",
    h = {
        name = "Hover",
        a = { "<cmd>lua require'rust-tools.hover_actions'.hover_actions()<cr>", "Hover Actions" },
        r = { "<cmd>lua require'rust-tools.hover_range'.hover_range()<cr>", "Hover Range" },
    },
    i = {
        name = "Inlay hints",
        d = { "<cmd>lua require('rust-tools.inlay_hints').disable_inlay_hints()<cr>", "Disable Hints" },
        s = { "<cmd>lua require('rust-tools.inlay_hints').set_inlay_hints()<cr>", "Set Hints" },
        t = { "<cmd>lua require('rust-tools.inlay_hints').toggle_inlay_hints()<cr>", "Toggle Hints" },
    },
    j = { "<cmd>lua require'rust-tools.join_lines'.join_lines()<cr>", "Join Lines" },
    m = { "<cmd>lua require'rust-tools.expand_macro'.expand_macro()<cr>", "Expand Macro" },
    o = { "<cmd>lua require'rust-tools.open_cargo_toml'.open_cargo_toml()<cr>", "Open cargo.toml" },
    p = { "<cmd>lua require'rust-tools.parent_module'.parent_module()<cr>", "Parent Module" },
    r = { "<cmd>lua require('rust-tools.runnables').runnables()<cr>", "Runnables" },
}
lvim.builtin.which_key.mappings["D"] = {
    name = "Diffview",
    c = { "<cmd>DiffviewClose<cr>", "DiffviewClose" },
    f = { "<cmd>DiffviewFocusFiles<cr>", "DiffviewFocusFiles" },
    o = { "<cmd>DiffviewOpen<cr>", "DiffviewOpen" },
    r = { "<cmd>DiffviewRefresh<cr>", "DiffviewRefresh" },
    t = { "<cmd>DiffviewToggleFiles<cr>", "DiffviewToggleFiles" },

}
lvim.builtin.which_key.mappings["t"] = {
    name = "Trouble",
    x = { "<cmd>Trouble<cr>", "TroubleToggle" },
    w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "TroubleToggleWorkspaceDiagnostics" },
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "TroubleToggleDocumentDiagnostics" },
    q = { "<cmd>TroubleToggle quickfix<cr>", "TroubleToggleQuickFix" },
    l = { "<cmd>TroubleToggle loclist<cr>", "TroubleToggleLoclist" },
    r = { "<cmd>TroubleToggle lsp_references<cr>", "TroubleToggleLspReferences" },
}
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile

-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- statusline settings
lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "nord"
lvim.builtin.lualine.sections.lualine_a = { "mode" }


-- -- nord lualine
-- local colors = {
--     nord1  = '#3B4252',
--     nord3  = '#4C566A',
--     nord5  = '#E5E9F0',
--     nord6  = '#ECEFF4',
--     nord7  = '#8FBCBB',
--     nord8  = '#88C0D0',
--     nord13 = '#EBCB8B',
-- }

-- lvim.builtin.lualine.options.theme = {
--     normal = {
--         -- a = {fg = colors.nord1, bg = colors.nord8, gui = 'bold'},
--         a = {fg = colors.nord1, bg = colors.nord8},
--         b = {fg = colors.nord5, bg = colors.nord1},
--         c = {fg = colors.nord5, bg = colors.nord3},
--     },
--     -- insert = {a = {fg = colors.nord1, bg = colors.nord6, gui = 'bold'}},
--     -- visual = {a = {fg = colors.nord1, bg = colors.nord7, gui = 'bold'}},
--     -- replace = {a = {fg = colors.nord1, bg = colors.nord13, gui = 'bold'}},
--     insert = {a = {fg = colors.nord1, bg = colors.nord6}},
--     visual = {a = {fg = colors.nord1, bg = colors.nord7}},
--     replace = {a = {fg = colors.nord1, bg = colors.nord13}},
--     inactive = {
--         -- a = {fg = colors.nord1, bg = colors.nord8, gui = 'bold'},
--         a = {fg = colors.nord1, bg = colors.nord8},
--         b = {fg = colors.nord5, bg = colors.nord1},
--         c = {fg = colors.nord5, bg = colors.nord1},
--     },
-- }

-- lvim.builtin.lualine.options.component_separators = "|"
-- lvim.builtin.lualine.options.component_separators = {'', ''}
-- lvim.builtin.lualine.options.section_separators = {'', ''}

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

-- Additional Plugins
lvim.plugins = {
    -- {"lunarvim/colorschemes"},
    { "shaunsingh/nord.nvim" },
    { "folke/tokyonight.nvim" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    {
        "pwntester/octo.nvim",
        event = "BufRead",
        config = function()
            require("pepeye.octo").config()
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        config = function()
            require("pepeye.lsp_signature").config()
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        -- event = "BufReadPre",
        config = function()
            require "pepeye.blankline"
        end,
    },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
        config = function()
            require("pepeye.diffview").config()
        end,
    },
    {
        "f-person/git-blame.nvim",
        event = "BufRead",
        config = function()
            vim.cmd "highlight default link gitblame SpecialComment"
            vim.g.gitblame_enabled = 0
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "nacro90/numb.nvim",
        event = "BufRead",
        config = function()
            require("pepeye.numb").config()
        end,
    },
    {
        "monaqa/dial.nvim",
        event = "BufRead",
        config = function()
            require("pepeye.dial").config()
        end,
    },
    {
        "rcarriga/nvim-notify",
        event = "BufRead",
        config = function()
            require("pepeye.notify").config()
        end,
    },
    {
        "simrat39/symbols-outline.nvim",
        -- cmd = "SymbolsOutline",
        config = function()
            require("pepeye.outline").config()
        end,
    },
    {
        "folke/twilight.nvim",
        config = function()
            require("pepeye.twilight").config()
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("pepeye.colorizer").config()
        end,
    },
    {
        "windwp/nvim-spectre",
        event = "BufRead",
        config = function()
            require("pepeye.spectre").config()
        end,
    },
    {
        "folke/zen-mode.nvim",
        config = function()
            require("pepeye.zen").config()
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        event = "BufRead",
        config = function()
            require("pepeye.rust_tools").config()
        end,
        requires ="neovim/nvim-lspconfig",
    },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
