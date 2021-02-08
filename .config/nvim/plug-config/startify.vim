
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
    \ { 'v': '~/.config/nvim/init.vim' },
    \ { 'z': '~/.zshrc' },
    \ { 'l': '~/tech-garden/index.md' },
    \ { 'i': '~/.config/i3/config'},
  \ ]


let g:startify_custom_header = [
\ '   @yashguptaz',
\]



