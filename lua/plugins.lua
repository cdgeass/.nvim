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

  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }
end)
