local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end
-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function()
  use 'wbthomason/packer.nvim'		 		-- Packer can manage itself
 
	-- Appearence
  use 'bluz71/vim-nightfly-guicolors' -- Nightfly Color Theme
  use 'kyazdani42/nvim-tree.lua' 			-- Explorer
	use 'kyazdani42/nvim-web-devicons'  -- Devicons for Plugins
	use 'romgrk/barbar.nvim' 						-- VSCode like Tab Bar 
	use {'glepnir/galaxyline.nvim' , branch = 'main'}	

	-- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'p00f/nvim-ts-rainbow'
	
	use 'windwp/nvim-ts-autotag'
  use 'alvan/vim-closetag'

	-- LSP
  use 'neovim/nvim-lspconfig'					-- Language Server Protocol Config
  use 'hrsh7th/nvim-compe' 						-- Autocompletion
	use 'anott03/nvim-lspinstall'
	use 'glepnir/lspsaga.nvim'

	-- Telescope
	use 'nvim-telescope/telescope.nvim' -- Telescope: Searching  
	use 'nvim-lua/popup.nvim' 					-- Neovim Popup API
	use 'nvim-lua/plenary.nvim' 				-- Functions you don't wanna write again

	use 'hrsh7th/vim-vsnip' 						-- Snipper Integration for Neovim
  use 'hrsh7th/vim-vsnip-integ'

 	use 'windwp/nvim-autopairs'
	use 'b3nj5m1n/kommentary'
	use 'TimUntersberger/neogit' 				-- Git integration for Neovim
	use 'andymass/vim-matchup' 					-- Better %
	use 'liuchengxu/vim-which-key'  		-- Which Key

	use 'glepnir/dashboard-nvim' 				-- Dashboard for Neovim
	use 'mbbill/undotree' 							-- Undotree to undo stuff well

	use 'pantharshit00/vim-prisma'
end)
