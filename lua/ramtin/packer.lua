-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Theme:
  use 'Mofiqul/vscode.nvim'

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  --harpon:
  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {'neovim/nvim-lspconfig', tag = 'v1.8.0', pin = true}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/nvim-cmp'}


end)
