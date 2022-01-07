local Plug = vim.fn['plug#']
vim.call( 'plug#begin', '~/.config/nvim/plugged' )

  -- handel the syntax parsing smartly
  Plug( 'nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'} ) 

  -- set up the language server
  Plug( 'neovim/nvim-lspconfig' )
  Plug( 'williamboman/nvim-lsp-installer' )

  -- set up the autocompletion engine
  Plug( 'hrsh7th/cmp-nvim-lsp' )
  Plug( 'hrsh7th/cmp-buffer' )
  Plug( 'hrsh7th/cmp-path' )
  Plug( 'hrsh7th/cmp-cmdline' )
  Plug( 'hrsh7th/nvim-cmp' )

  Plug( 'dcampos/nvim-snippy' )
  Plug( 'dcampos/cmp-snippy' )

  Plug( 'tzachar/cmp-tabnine', {['do'] = 'powershell ./install.ps1'} )
  --Plug( 'tzachar/cmp-tabnine', {['do'] = './install.sh'} )`

  -- set up the file system interface
  Plug( 'kyazdani42/nvim-web-devicons' )
  Plug( 'kyazdani42/nvim-tree.lua' )
  
  -- set up the fuzzy search capabilities
  Plug( 'nvim-lua/plenary.nvim' )
  Plug( 'nvim-telescope/telescope.nvim' )

  -- set up the rust development tools
  Plug( 'simrat39/rust-tools.nvim' )

vim.call( 'plug#end' )
