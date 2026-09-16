vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'folke/tokyonight.nvim',
        config = function()
            require('tokyonight').setup({})
            vim.cmd('colorscheme tokyonight-night')
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        branch = "main",
        run = ':TSUpdate'
    }

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- LSP
    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
end) 
