" mkdir ~/.vim/undodir -p
" For copying text hold shift and drag over text and use ctrl+shift+c to copy
" :source %
" Install vim plug https://github.com/junegunn/vim-plug
" :PlugInstall
" Also use :CocInstall for certain Coc Plugins
syntax on

set relativenumber
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set pumheight=10
set hidden
set noshowmode
set mouse=a
set backupcopy=yes
" Press F3 to get in paste mode
set pastetoggle=<F3>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug '~/.fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'justinmk/vim-sneak'

" Git Tooling
Plug 'mhinz/vim-signify' " Sign Columns
Plug 'tpope/vim-fugitive' " Run `:git` commands
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim' " Git commit browser


call plug#end()

" Appereance
highlight ColorColumn ctermbg=0 guibg=lightgrey
hi VertSplit ctermfg=Black ctermbg=DarkGray

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_theme='lucius'
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'

let g:airline_left_sep = ''
let g:airline_right_sep = ''

set showtabline=2

set background=dark
set t_Co=256
set fillchars+=vert:\│
set cmdheight=2

let g:airline_section_z = '%{coc#status()}'

" ctrl + p looks nice now :D
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

:nmap <C-e> :CocCommand explorer<CR>
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" alt + hjkl to resize
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

nnoremap <C-c> <Esc>
nnoremap <C-p> :Files<Cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>s :Rg<SPACE>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Better Tabbing
vnoremap < <gv
vnoremap > >gv

" Better Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

source $VIMRUNTIME/mswin.vim

" --- CONFIGS ---
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:airline#extensions#coc#enabled = 1

"  Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Auto Completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

" from readme
" if hidden is not set, TextEdit might fail
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300"

" Signify Config
autocmd vimenter * SignifyToggle " Don't start Signify when Vim starts

" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx, *.js'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
