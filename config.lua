-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
-- lvim.colorscheme = "onedarker"
lvim.colorscheme = "nord"


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
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- statusline settings
lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "nord"

local colors = {
    nord1  = '#3B4252',
    nord3  = '#4C566A',
    nord5  = '#E5E9F0',
    nord6  = '#ECEFF4',
    nord7  = '#8FBCBB',
    nord8  = '#88C0D0',
    nord13 = '#EBCB8B',
}

lvim.builtin.lualine.options.theme = {
    normal = {
        a = {fg = colors.nord1, bg = colors.nord8, gui = 'bold'},
        b = {fg = colors.nord5, bg = colors.nord1},
        c = {fg = colors.nord5, bg = colors.nord3}
    },
    insert = {a = {fg = colors.nord1, bg = colors.nord6, gui = 'bold'}},
    visual = {a = {fg = colors.nord1, bg = colors.nord7, gui = 'bold'}},
    replace = {a = {fg = colors.nord1, bg = colors.nord13, gui = 'bold'}},
    inactive = {
        a = {fg = colors.nord1, bg = colors.nord8, gui = 'bold'},
        b = {fg = colors.nord5, bg = colors.nord1},
        c = {fg = colors.nord5, bg = colors.nord1}
    },
}
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
    {"folke/tokyonight.nvim"},
    {
        "ray-x/lsp_signature.nvim",
        config = function() require"lsp_signature".on_attach() end,
        event = "InsertEnter"
    },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
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
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" }, {
                RGB = true, -- #RGB hex codes
                RRGGBB = true, -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true, -- CSS rgb() and rgba() functions
                hsl_fn = true, -- CSS hsl() and hsla() functions
                css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
                })
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        event = "BufRead",
        config = function()
        require("rust-tools").setup {
            opts = {
                    tools = { -- rust-tools options
                        -- Automatically set inlay hints (type hints)
                        autoSetHints = true,
                        -- Whether to show hover actions inside the hover window
                        -- This overrides the default hover handler 
                        hover_with_actions = true,
                        runnables = {
                            -- whether to use telescope for selection menu or not
                            use_telescope = true
                            -- rest of the opts are forwarded to telescope
                        },

                        debuggables = {
                            -- whether to use telescope for selection menu or not
                            use_telescope = true
                            -- rest of the opts are forwarded to telescope
                        },

                        -- These apply to the default RustSetInlayHints command
                        inlay_hints = {

                            -- Only show inlay hints for the current line
                            only_current_line = false,
                            only_current_line_autocmd = "CursorHold",
                            show_parameter_hints = true,
                            parameter_hints_prefix = "<- ",
                            other_hints_prefix = "=> ",
                            max_len_align = false,
                            max_len_align_padding = 1,
                            right_align = false,
                            right_align_padding = 7,
                            highlight = "Comment",
                        },

                        hover_actions = {
                            border = {
                                {"╭", "FloatBorder"}, {"─", "FloatBorder"},
                                {"╮", "FloatBorder"}, {"│", "FloatBorder"},
                                {"╯", "FloatBorder"}, {"─", "FloatBorder"},
                                {"╰", "FloatBorder"}, {"│", "FloatBorder"}
                            },
                            auto_focus = false
                        },

                        -- settings for showing the crate graph based on graphviz and the dot
                        -- command
                        -- crate_graph = {
                        --     -- Backend used for displaying the graph
                        --     -- see: https://graphviz.org/docs/outputs/
                        --     -- default: x11
                        --     backend = "x11",
                        --     -- where to store the output, nil for no output stored (relative
                        --     -- path from pwd)
                        --     -- default: nil
                        --     output = nil,
                        --     -- true for all crates.io and external crates, false only the local
                        --     -- crates
                        --     -- default: true
                        --     full = true,
                        -- }
                    },

                    -- all the opts to send to nvim-lspconfig
                    -- these override the defaults set by rust-tools.nvim
                    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
                    -- server = {} -- rust-analyer options
                },
            }
        end,
        requires ="neovim/nvim-lspconfig",
    },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
