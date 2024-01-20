vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

 use({
    "Rigellute/rigel",
    config = function()
        vim.cmd("colorscheme rigel")
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},-- Required
    }
  }

  use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
          -- you can configure Hop the way you like here; see :h hop-config
          require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
  }

  use 'mfussenegger/nvim-dap'

end)
