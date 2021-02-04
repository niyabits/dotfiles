
" Startify
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1

let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Files']            },
    \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]

let g:startify_bookmarks = [
    \ { 'i': '~/.config/nvim/init.vim' },
    \ { 'z': '~/.zshrc' },
  \ ]


let g:startify_custom_header = [
\ '        _                             __                  ',
\ ' _   __(_)___ ___     ____ _____     / /_  _______________',
\ '| | / / / __ `__ \   / __ `/ __ \   / __ \/ ___/ ___/ ___/',
\ '| |/ / / / / / / /  / /_/ / /_/ /  / /_/ / /  / /  / /    ',
\ '|___/_/_/ /_/ /_/   \__, /\____/  /_.___/_/  /_/  /_/     ',
\ '                   /____/                                 ',
\]



