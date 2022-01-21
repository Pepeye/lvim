vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
    "lspinfo",
    "packer",
    "checkhealth",
    "help",
    "startify",
    "dashboard",
    "neogitstatus",
    "NvimTree",
    "Trouble",
}
-- vim.g.indent_blankline_show_trailing_blankline_indent = false
-- vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
}
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
-- vim.wo.colorcolumn = "99999"

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

local M = {}

M.config = function()
    local status_ok, numb = pcall(require, "indent-blankline")
    if not status_ok then
        return
    end
    blankline.setup {
        show_end_of_line = false,
        space_char_blankline = "▏",
        show_current_context = true,
        show_current_context_start = true,
    }
end

return M

