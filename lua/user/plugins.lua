local M = {}

M.config = function()
  lvim.plugins = {
    -- {
    --   "rose-pine/neovim",
    --   as = "rose-pine",
    --   config = function()
    --     require("user.theme").rose_pine()
    --     vim.cmd [[colorscheme rose-pine]]
    --   end,
    --   cond = function()
    --     local _time = os.date "*t"
    --     return (_time.hour >= 1 and _time.hour < 19)
    --   end,
    -- },
    -- {
    --   "folke/tokyonight.nvim",
    --   config = function()
    --     require("user.theme").tokyonight()
    --     vim.cmd [[colorscheme tokyonight]]
    --   end,
    --   cond = function()
    --     local _time = os.date "*t"
    --     return _time.hour >= 19 and _time.hour < 21
    --   end,
    -- },
    -- {
    --   "rebelot/kanagawa.nvim",
    --   config = function()
    --     require("user.theme").kanagawa()
    --     vim.cmd [[colorscheme kanagawa]]
    --   end,
    --   cond = function()
    --     local _time = os.date "*t"
    --     return (_time.hour >= 21 and _time.hour < 24) or (_time.hour >= 0 and _time.hour < 1)
    --   end,
    -- },
    { "arcticicestudio/nord-vim" },
    { "EdenEast/nightfox.nvim" },
    { "folke/tokyonight.nvim" },
    { "rose-pine/neovim" },
    { "rebelot/kanagawa.nvim" },
    { "folke/lsp-colors.nvim" },
    {
      "folke/persistence.nvim",
      event = "BufReadPre", -- only start session saving when a file opened
      module = "persistence",
      config = function()
          require("persistence").setup()
      end,
    },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    {
      'tzachar/cmp-tabnine',
      run='./install.sh',
      requires = 'hrsh7th/nvim-cmp'
    },
    {
      "pwntester/octo.nvim",
      event = "BufRead",
    },
    {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      config = function()
          require("user.lsp_signature").config()
      end,
    },
    {
      "glepnir/lspsaga.nvim",
      event = "BufRead",
    },
    {
      "rcarriga/nvim-dap-ui",
      config = function()
          require("user.dapui").config()
      end,
      ft = { "python", "rust", "go" },
      event = "BufReadPost",
      requires = { "mfussenegger/nvim-dap" },
      disable = not lvim.builtin.dap.active,
    },
    {
      "akinsho/bufferline.nvim",
      config = function()
          require("user.bufferline").config()
      end,
      requires = "nvim-web-devicons",
      disable = not lvim.builtin.fancy_bufferline.active,
    },
    -- close buffers with ease
    { "moll/vim-bbye" },
    {
      "lukas-reineke/indent-blankline.nvim",
      -- event = "BufReadPre",
      config = function()
          require "user.blankline"
      end,
    },
    {
      "sindrets/diffview.nvim",
      event = "BufRead",
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
          require("user.numb").config()
      end,
    },
    {
      "goolord/alpha-nvim",
      config = function()
          require("user.dashboard").config()
      end,
      disable = not lvim.builtin.fancy_dashboard.active,
    },
    {
      "monaqa/dial.nvim",
      event = "BufRead",
      config = function()
          require("user.dial").config()
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      -- cmd = "SymbolsOutline",
      config = function()
          require("user.outline").config()
      end,
    },
    { "folke/twilight.nvim" },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
          require("user.colorizer").config()
      end,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
    },
    {
      "folke/zen-mode.nvim",
      config = function()
          require("user.zen").config()
      end,
    },
    {
      "simrat39/rust-tools.nvim",
      event = "BufRead",
      config = function()
          require("user.rust_tools").config()
      end,
      requires ="neovim/nvim-lspconfig",
    },
  }
end

return M
