vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    use 'nvim-lualine/lualine.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'
    use 'github/copilot.vim'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    use {
        'nenitf/cu.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
        }
    }

    use 'mfussenegger/nvim-dap'

    use {
      'stevearc/aerial.nvim',
      config = function() require('aerial').setup() end
    }
end)
