require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer

  use 'gruvbox-community/gruvbox' -- Gruvbox colorscheme
  use 'folke/tokyonight.nvim' -- Tokoynight colorscheme
  use 'sainnhe/everforest' -- Everforest colorscheme
  use 'rose-pine/neovim'

  -- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep'
		}
	}

  -- NvimTree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
end)

