-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', 
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Or with configuration
  use({
	  'projekt0n/github-nvim-theme',
	  config = function()
		  require('github-theme').setup({
			  -- ...
		  })

		  vim.cmd('colorscheme github_dark_default')
	  end
  })

  use{'nvim-treesitter/nvim-treesitter', branch = "main", run =  ':TSUpdate' }
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('neovim/nvim-lspconfig')
  end)
  
