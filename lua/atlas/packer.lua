vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use({
        'nordtheme/vim',
        as = 'nord',
        config = function()
            vim.cmd('colorscheme nord')
        end
    })

    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    use('mbbill/undotree')

    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    })

    use('tpope/vim-fugitive')

    use('folke/trouble.nvim')

    use('christoomey/vim-tmux-navigator')

    use('nvim-lualine/lualine.nvim')

    use('lukas-reineke/indent-blankline.nvim')

    use('numToStr/Comment.nvim')
end)
