" -- REMAPS --
" Keyboard Remaps and Shortcuts
let mapleader = " "                       

" alt + hjkl to resize
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" nnoremap <C-p> :Files<Cr>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<Cr>
nnoremap <C-c> <Esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>v :vsplit<CR>                        
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>s :Rg<SPACE>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Float Term
nnoremap <leader>tn :CocCommand floaterm.new<CR>

" ctrl+s to save and ctrl+q to quit
nnoremap <C-s> :w<CR> " Alternate way to save
nnoremap <C-Q> :wq!<CR> " Alternate way to quit

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bprevious<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bnext<CR>
" Close buffer with ctrl+w
nnoremap <silent> <C-w> :bd<CR>

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

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


