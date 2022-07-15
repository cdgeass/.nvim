vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
        'kyazdani42/nvim-web-devicons',
    }
  }
  use {
    'akinsho/bufferline.nvim',
    requires = {
        'kyazdani42/nvim-web-devicons',
    }
  }

  use 'akinsho/toggleterm.nvim'

  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }

  use {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig'
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  use {
    'iamcco/markdown-preview.nvim',
    run = function()
      vim.fn['mkdp#util#install']()
    end
  }

end)
