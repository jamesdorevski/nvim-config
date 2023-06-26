return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'williamboman/mason.nvim'    
    	use 'williamboman/mason-lspconfig.nvim'

	use 'neovim/nvim-lspconfig'
    	use 'simrat39/rust-tools.nvim' -- Tools to setup lspconfig for rust-analyzer

	-- Completion framework:
    	use 'hrsh7th/nvim-cmp' 

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
    	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'

	-- use 'nvim-treesitter/nvim-treesitter'

	use 'mfussenegger/nvim-dap'

	use 'voldikss/vim-floaterm'

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.1',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
  		'phaazon/hop.nvim',
  		branch = 'v2'
	}
end)
