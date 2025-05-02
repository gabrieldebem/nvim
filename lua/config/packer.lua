vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'
  use 'CopilotC-Nvim/CopilotChat.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = {
      { 'nvim-lua/plenary.nvim' },
    }
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
      { 'L3MON4D3/LuaSnip',                 run = "make install_jsregexp" },
    }
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use { 'L3MON4D3/LuaSnip' }
  use { 'hrsh7th/nvim-cmp' }
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

  use { 'stevearc/aerial.nvim' }

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

  use { 'akinsho/git-conflict.nvim', tag = "*" }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  }

  use "rebelot/kanagawa.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  -- use 'wakatime/vim-wakatime'
  use "jwalton512/vim-blade"
  use 'vimwiki/vimwiki'

  use {
    "vinnymeller/swagger-preview.nvim",
    run = "npm i",
  }

  use "sainnhe/everforest"
end)
