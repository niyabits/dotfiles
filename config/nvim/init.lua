require('keymaps')
require('options')
require('theming')
require('plugins')

-- Plugins
require('plugins/nvim-compe')
require('plugins/telescope')
require('plugins/nvim-tree')
require('plugins/kommentary')
require('plugins/dashboard')
require('plugins/galaxyline')
require('plugins/autopairs')
require('plugins/closetag')

-- Language Servers
require('lsp/init')
require('lsp/ts')
require('lsp/css')
require('lsp/html')
require('lsp/json')
require('lsp/efm-general-ls')

