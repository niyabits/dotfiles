" Sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " Case insensitive
let g:sneak#s_next = 1
" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;
" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow


