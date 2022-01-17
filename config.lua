--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
lvim.completeopt = { "menuone", "noinsert", "noselect" }
lvim.lsp.diagnostics.virtual_text = false
lvim.leader = "space"

-- customisations
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.dap.active = false -- change this to enable/disable debugging
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_bufferline = { active = true } -- enable/disable fancy bufferline
lvim.builtin.fancy_dashboard = { active = true } -- enable/disable fancy dashboard

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "html",
    "javascript",
    "json",
    "lua",
    "python",
    "svelte",
    "typescript",
    "css",
    "rust",
    "java",
    "yaml",
}

lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.highlight.enabled = true
require("user.builtin").config()


-- D E B U G G I N G
if lvim.builtin.dap.active then
  require("user.dap").config()
end

-- S T A T U S L I N E
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- L S P
-- 
vim.list_extend(
  lvim.lsp.override,
  { "rust_analyzer", "tsserver", "dockerls", "texlab", "sumneko_lua", "gopls", "jsonls", "yamlls" }
)
require("user.null_ls").config()
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
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- P L U G I N S
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
require("user.plugins").config()

-- A U T O C O M M A N D S
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
require("user.autocommands").config()
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

-- K E Y M A P S [view all the defaults by pressing <leader>Lk]
-- add your own keymapping
require("user.keymaps").config()
