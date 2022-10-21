return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'shaunsingh/seoul256.nvim'
  use "savq/melange"

  -- gruvbox theme
  use {
      "ellisonleao/gruvbox.nvim",
      requires = {"rktjmp/lush.nvim"}
  }

  -- nvim-tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = 'nvim-tree/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

end)
