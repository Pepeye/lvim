local M = {}

M.config = function()
  -- keymaps
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

  -- which key settings
  -- Use which-key to add extra bindings with the leader-key prefix
  if lvim.builtin.fancy_dashboard.active then
    lvim.builtin.which_key.mappings[";"] = { "<cmd>Alpha<CR>", "Dashboard" }
  end
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    t = { "<cmd>TodoLocList <cr>", "Todo" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
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
  lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
  
  -- bufferline keymaps

end

return M
