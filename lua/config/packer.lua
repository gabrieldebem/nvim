vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'mg979/vim-visual-multi'
  use 'lewis6991/gitsigns.nvim'
  use 'rcarriga/nvim-notify'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'


  use { 'L3MON4D3/LuaSnip' }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'cmp'.setup {
        snippet = {
          expand = function(args)
            require 'luasnip'.lsp_expand(args.body)
          end
        },

        sources = {
          { name = 'luasnip' },
          -- more sources
        },
      }
    end
  }
  use { 'saadparwaiz1/cmp_luasnip' }

  use "tpope/vim-fugitive"

  use 'nvim-lualine/lualine.nvim'
  use 'arkav/lualine-lsp-progress'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
  }

  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  use "nvim-telescope/telescope-dap.nvim"

  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }

  use 'folke/flash.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-sensible'
  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    after = "nvim-web-devicons",
  })

  use "sindrets/diffview.nvim"

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  }

  use "rose-pine/neovim"

  use "hrsh7th/nvim-cmp"

  use "lukas-reineke/indent-blankline.nvim"

  use "jwalton512/vim-blade"

  -- • `<leader>co`: Choose the OURS version of the conflict.
  -- • `<leader>ct`: Choose the THEIRS version of the conflict.
  -- • `<leader>cb`: Choose the BASE version of the conflict.
  -- • `<leader>ca`: Choose all versions of the conflict (effectively

  use "sindrets/diffview.nvim"
end)
