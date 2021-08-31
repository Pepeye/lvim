-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/pepeye/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/pepeye/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/pepeye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/pepeye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/pepeye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["dial.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16pepeye.dial\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/dial.nvim"
  },
  ["diffview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/diffview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    config = { "\27LJ\2\nu\0\0\3\0\5\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\0\0=\1\4\0K\0\1\0\21gitblame_enabled\6g3highlight default link gitblame SpecialComment\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21pepeye.blankline\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\25pepeye.lsp_signature\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/lualine.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nord.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16pepeye.numb\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\21pepeye.colorizer\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15core.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\20core.lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\18pepeye.notify\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19pepeye.spectre\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16pepeye.octo\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/project.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\22pepeye.rust_tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/rust-tools.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19pepeye.outline\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\20pepeye.twilight\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\15pepeye.zen\frequire\0" },
    loaded = true,
    path = "/Users/pepeye/.local/share/lunarvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\21pepeye.colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\20pepeye.twilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21pepeye.blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\15pepeye.zen\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19pepeye.outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'octo.nvim', 'diffview.nvim', 'git-blame.nvim', 'gitsigns.nvim', 'rust-tools.nvim', 'numb.nvim', 'nvim-comment', 'nvim-notify', 'nvim-spectre', 'dial.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'lsp_signature.nvim', 'vim-vsnip', 'nvim-ts-autotag', 'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'nvim-toggleterm.lua', 'barbar.nvim', 'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
