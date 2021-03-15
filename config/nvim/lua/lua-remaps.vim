lua require("plugins/telescope/telescope-config")
nnoremap <leader>vrc :lua require('plugins.telescope.telescope-config').search_dotfiles()<CR>
nnoremap <leader>tg :lua require('plugins.telescope.telescope-config').search_garden()<CR>
