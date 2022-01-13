local M = {}

M.config = function()
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
  --     visua = {a = {fg = colors.nord1, bg = colors.nord7}},
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
  -- lvim.builtin.lualine.options.section_separators = {'', ''}l
end

return M
