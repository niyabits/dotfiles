" -- APPEARENCE --
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Colorscheme 
syntax enable
colorscheme nightfly

hi Normal guibg=NONE ctermbg=NONE
hi VertSplit ctermfg=Black ctermbg=DarkGray
 
set t_Co=256
set fillchars+=vert:\│

highlight ColorColumn ctermbg=0 guibg=lightgrey
