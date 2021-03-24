local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'		 		-- Packer can manage itself

  use 'bluz71/vim-nightfly-guicolors' -- Nightfly Color Theme
  use 'kyazdani42/nvim-tree.lua' 			-- Explorer
	use 'kyazdani42/nvim-web-devicons'
	use 'romgrk/barbar.nvim' 

	use 'nvim-telescope/telescope.nvim' -- Telescope: Searching  
	use 'nvim-lua/popup.nvim' 					-- Neovim Popup API
	use 'nvim-lua/plenary.nvim' 				-- Functions you don't wanna write again

  use 'neovim/nvim-lspconfig'					-- Language Server Protocol Config
  use 'hrsh7th/nvim-compe' 						-- Autocompletion
	use 'anott03/nvim-lspinstall'
	use 'glepnir/lspsaga.nvim'

	use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

	use 'rstacruz/vim-closer'
end)
