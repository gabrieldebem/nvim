return {
  'wbthomason/packer.nvim',
  'github/copilot.vim',

  'mg979/vim-visual-multi',
  'rcarriga/nvim-notify',

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip', build = "make install_jsregexp" },
    },
  },

  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },

  'tpope/vim-fugitive',

  'arkav/lualine-lsp-progress',

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    map_cr = true,
  },

  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "theHamsta/nvim-dap-virtual-text",
  "nvim-telescope/telescope-dap.nvim",

  { 'stevearc/aerial.nvim' },

  'folke/flash.nvim',
  'tpope/vim-commentary',
  'tpope/vim-sensible',
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },

  'wakatime/vim-wakatime',
  "jwalton512/vim-blade",
}
