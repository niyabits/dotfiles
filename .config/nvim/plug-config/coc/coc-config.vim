" Coc extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-pairs',
  \ 'coc-html',
  \ 'coc-highlight',
  \ 'coc-explorer',
  \ 'coc-pyright',
  \ 'coc-eslint',
  \ 'coc-emmet',
  \ 'coc-discord-rpc',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-floaterm'
  \ ]

"  -- PRETTIER --
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" :nmap <C-e> :CocCommand explorer<CR>
