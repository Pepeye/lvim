local M = {}

M.config = function()
  lvim.plugins = {
      {
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
          require("user.theme").rose_pine()
          vim.cmd [[colorscheme rose-pine]]
        end,
        cond = function()
          local _time = os.date "*t"
          return (_time.hour >= 1 and _time.hour < 9)
        end,
      },
      {
        "folke/tokyonight.nvim",
        config = function()
          require("user.theme").tokyonight()
          vim.cmd [[colorscheme tokyonight]]
        end,
        cond = function()
          local _time = os.date "*t"
          return _time.hour >= 9 and _time.hour < 21
        end,
      },
      {
        "rebelot/kanagawa.nvim",
        config = function()
          require("user.theme").kanagawa()
          vim.cmd [[colorscheme kanagawa]]
        end,
        cond = function()
          local _time = os.date "*t"
          return (_time.hour >= 21 and _time.hour < 24) or (_time.hour >= 0 and _time.hour < 1)
        end,
      },
      { "arcticicestudio/nord-vim" },
      { "EdenEast/nightfox.nvim" },
      { "folke/tokyonight.nvim" },
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
          "glepnir/lspsaga.nvim",
          event = "BufRead",
          config = function ()
              require("pepeye.saga").config()
          end,
      },
  -- {
      --     "rcarriga/nvim-dap-ui",
      --     config = function ()
      --         require("pepeye.dapui").config()
      --     end,
      --     requires = {"mfussenegger/nvim-dap"},
      -- },
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
          end,
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
end 

return M


