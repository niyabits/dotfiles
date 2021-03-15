syntax on

set relativenumber
set pumheight=10
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set pumheight=10
set noshowmode
set mouse=a
set backupcopy=yes
set clipboard=unnamedplus
set autoindent
set signcolumn=yes
set nohlsearch
set scrolloff=8
set pastetoggle=<F3> " F3 for Paste Mode
set hidden 
set timeoutlen=500
set showtabline=2
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c 

filetype plugin on      " Auto Indentation Levels
filetype indent off     " Auto Indentation Levels

" --- PLUGINS ---
" Install vim plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " VSCode like features:

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }   
Plug 'maxmellon/vim-jsx-pretty'                         " Pretty JSX
Plug 'jparise/vim-graphql'                              " GraphQL Syntax Highlighting with Vim
Plug 'pantharshit00/vim-prisma'                         " Prisma Syntax Highlighting and Autocomplete

Plug 'liuchengxu/vim-which-key'                         " Don't forget vim shortcut keys
Plug 'jremmen/vim-ripgrep'                              " Search faster :Rg command
Plug 'vim-utils/vim-man'                                " View man pages in Vim :Man
Plug 'mbbill/undotree'                                  " A log of undo changes
Plug 'airblade/vim-rooter'                              " Opens projects in rot directory
Plug 'ryanoasis/vim-devicons'                           " Beautiful icons
Plug 'justinmk/vim-sneak'                               " Use `s` to navigate faster
Plug 'AndrewRadev/tagalong.vim'                         " Autoclose & autorename HTMLish Tags
Plug 'unblevable/quick-scope'                           " Faster `f` movement
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'                               " Better Starting screen for Vim
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}         " Navigate Linux Filesystem
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'alvan/vim-closetag'

Plug 'bluz71/vim-nightfly-guicolors' 								    " Nightfly Theme

" Git Tooling
Plug 'tpope/vim-fugitive'                               " Run `:git` commands
Plug 'tpope/vim-rhubarb'                                " :GBrowse to open files in GitHub
Plug 'junegunn/gv.vim'                                  " Git commit browser
" Plug 'mhinz/vim-signify'                              " Sign Columns

" -- LUA PLUGINS --
" Recommended > updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-treesitter/playground'   

Plug 'neovim/nvim-lspconfig'                        " Native Neovim Language Server Protocol
Plug 'glepnir/lspsaga.nvim'                         " Code actions and other UI LSP features
Plug 'kyazdani42/nvim-web-devicons'                 " Devicons for vim
Plug 'hrsh7th/nvim-compe'                           " Autocompletetion Plugin For Neovim
Plug 'anott03/nvim-lspinstall'                      " Easily Install Language Server Protocols
Plug 'kyazdani42/nvim-tree.lua'                     " Explorer for Vim
Plug 'romgrk/barbar.nvim'                           " Tabs for Vim
Plug 'kosayoda/nvim-lightbulb'                      " VSCode like Light Bulb
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " Vim Bottom Line
Plug 'norcalli/nvim-colorizer.lua'                  " Colorizer for Vim
Plug 'p00f/nvim-ts-rainbow'                         " Bracket Pair Colorizer
Plug 'b3nj5m1n/kommentary'                          " Comment Things Faster 
Plug 'windwp/nvim-autopairs'                        " Auto close parenthesis, brackets etc
Plug 'TimUntersberger/neogit'                       " Git Integration for Neovim

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

source ~/.config/nvim/plug-config/appearence.vim      " APPEARENCE
source ~/.config/nvim/plug-config/remaps.vim          " REMAPS
 
" -- VIM PLUGINS --
source ~/.config/nvim/plug-config/coc/coc-config.vim
source ~/.config/nvim/plug-config/startify.vim
source ~/.config/nvim/plug-config/sneak.vim
source ~/.config/nvim/plug-config/quickscope.vim
source ~/.config/nvim/plug-config/ripgrep.vim
source ~/.config/nvim/plug-config/closetag.vim
source ~/.config/nvim/plug-config/util.vim
" source ~/.config/nvim/plug-config/signify.vim

" -- LUA --
source ~/.config/nvim/lua/lua-remaps.vim

source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/nvim-tree.vim
source ~/.config/nvim/plug-config/tagalong.vim
source ~/.config/nvim/plug-config/barbar.vim
source ~/.config/nvim/plug-config/rnvimr.vim

luafile ~/.config/nvim/lua/plugins/telescope/telescope-config.lua
luafile ~/.config/nvim/lua/plugins/treesitter/treesitter.lua
luafile ~/.config/nvim/lua/plugins/compe/compe-config.lua
luafile ~/.config/nvim/lua/plugins/nvim-tree/nvim-tree-config.lua
luafile ~/.config/nvim/lua/plugins/nvim-lightbulb/nvim-lightbulb.lua
luafile ~/.config/nvim/lua/plugins/galaxyline/galaxy-line-config.lua
luafile ~/.config/nvim/lua/plugins/colorizer/colorizer-config.lua
luafile ~/.config/nvim/lua/plugins/kommentary/kommentary-config.lua
luafile ~/.config/nvim/lua/plugins/nvim-autopairs/nvim-autopairs-config.lua
luafile ~/.config/nvim/lua/plugins/lspsaga/lspsaga-config.lua

" LSP Files
luafile ~/.config/nvim/lua/lsp/general-ls.lua
luafile ~/.config/nvim/lua/lsp/ts.lua
luafile ~/.config/nvim/lua/lsp/eslint.lua
" luafile ~/.config/nvim/lua/lsp/lua-ls.lua
