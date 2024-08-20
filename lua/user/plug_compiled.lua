local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim')
Plug 'nvim-tree/nvim-web-devicons' -- optional
Plug 'nvim-tree/nvim-tree.lua'
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-fugitive'
Plug ('rose-pine/neovim', {name  = 'rose-pine'})
Plug ('mbbill/undotree')
Plug ('neovim/nvim-lspconfig')
Plug ('hrsh7th/nvim-cmp')
Plug ('hrsh7th/cmp-nvim-lsp')
Plug ('L3MON4D3/LuaSnip')
Plug ('VonHeikemen/lsp-zero.nvim', {branch = 'v3.x'})

-- Autocompletions
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('saadparwaiz1/cmp_luasnip')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-nvim-lua')

-- Snippets
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jiangmiao/auto-pairs'

vim.call('plug#end')
