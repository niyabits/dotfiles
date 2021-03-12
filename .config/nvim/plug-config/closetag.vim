" -- Autoclose Tags --
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx, *.js'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'

