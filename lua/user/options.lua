local M = {}

M.config = function()
  -- disabled plugins
  local disabled_plugins = {
    -- "repo/plugin",
  }

  for _, plugin in pairs(disabled_plugins) do
    vim.g["loaded_" .. plugin] = 1
  end

  vim.opt.termguicolors = true
  vim.opt.relativenumber = true
  vim.opt.wrap = true
  vim.wo.foldmethod = "expr"
  vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
  vim.wo.foldlevel = 4
  vim.wo.foldtext =
    [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:folded)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
  vim.wo.foldnestmax = 3
  vim.wo.foldminlines = 1
  vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
  vim.opt.confirm = true -- make vim prompt me to save before doing destructive things

  -- neovide
  -- https://github.com/neovide/neovide
  if vim.g.neovide then
    vim.g.neovide_cursor_animation_length = 0.01
    vim.g.neovide_cursor_trail_length = 0.05
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_remember_window_size = true
    vim.cmd [[set guifont=FiraCode\ Nerd\ Font:h14]]
  end

  -- nvui
  -- https://github.com/rohit-px2/nvui
  if vim.g.nvui then
    -- Configure nvui here
    -- vim.cmd [[NvuiCmdFontFamily FiraCode Nerd Font]]
    vim.cmd [[set linespace=1]]
    -- vim.cmd [[set guifont=FiraCode\ Nerd\ Font:h14]]
    vim.cmd [[NvuiPopupMenuDefaultIconFg white]]
    vim.cmd [[NvuiCmdBg #1e2125]]
    vim.cmd [[NvuiCmdFg #abb2bf]]
    vim.cmd [[NvuiCmdBigFontScaleFactor 1.0]]
    vim.cmd [[NvuiCmdPadding 10]]
    vim.cmd [[NvuiCmdCenterXPos 0.5]]
    vim.cmd [[NvuiCmdTopPos 0.0]]
    vim.cmd [[NvuiCmdFontSize 20.0]]
    vim.cmd [[NvuiCmdBorderWidth 5]]
    vim.cmd [[NvuiPopupMenuIconFg variable #56b6c2]]
    vim.cmd [[NvuiPopupMenuIconFg function #c678dd]]
    vim.cmd [[NvuiPopupMenuIconFg method #c678dd]]
    vim.cmd [[NvuiPopupMenuIconFg field #d19a66]]
    vim.cmd [[NvuiPopupMenuIconFg property #d19a66]]
    vim.cmd [[NvuiPopupMenuIconFg module white]]
    vim.cmd [[NvuiPopupMenuIconFg struct #e5c07b]]
    vim.cmd [[NvuiCaretExtendTop 15]]
    vim.cmd [[NvuiCaretExtendBottom 8]]
    vim.cmd [[NvuiTitlebarFontSize 12]]
    vim.cmd [[NvuiTitlebarFontFamily Arial]]
    vim.cmd [[NvuiCursorAnimationDuration 0.1]]
    -- vim.cmd [[NvuiToggleFrameless]]
    vim.cmd [[NvuiOpacity 0.99]]
  end
end

-- credit: https://github.com/nyngwang/NeoZoom.lua
function M.maximize_current_split()
  local cur_win = vim.api.nvim_get_current_win()
  vim.api.nvim_set_var("non_float_total", 0)
  vim.cmd "windo if &buftype != 'nofile' | let g:non_float_total += 1 | endif"
  vim.api.nvim_set_current_win(cur_win or 0)
  if vim.api.nvim_get_var "non_float_total" == 1 then
    if vim.fn.tabpagenr "$" == 1 then
      return
    end
    vim.cmd "tabclose"
  else
    local last_cursor = vim.api.nvim_win_get_cursor(0)
    vim.cmd "tabedit %:p"
    vim.api.nvim_win_set_cursor(0, last_cursor)
  end
end

return M
