require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
                    formatStdin = true
                }
            },
            javascript = {{formatCommand = "prettier --write && eslint .", formatStdin = true}},
            typescript = {{formatCommand = "prettier --write", formatStdin = true}},
            javascriptreact = {{formatCommand = "prettier --write", formatStdin = true}},
            typescriptreact = {{formatCommand = "prettier --write", formatStdin = true}}
        }
    }
}
