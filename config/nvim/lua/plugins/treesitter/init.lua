-- TREESITTER --
-- Use :TSInstall <Language> to Install the Parser for the language
-- TreeSitter Highlighting
require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {} -- list of language that will be disabled
    },

    indent = {enable = true},

    incremental_selection = {
        enable = true,
        keymaps = {init_selection = "vi", node_incremental = "n", scope_incremental = "s", node_decremental = "nd"}
    },

    rainbow = {enable = true}
}

require('nvim-ts-autotag').setup()
