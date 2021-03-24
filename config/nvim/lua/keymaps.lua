-- Helper Functions for remapping easily
local function map(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { silent = true })
end

local function noremap(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

local function nmap(lhs, rhs)
	map('n', lhs, rhs)
end

local function nnoremap(lhs, rhs)
    noremap('n', lhs, rhs)
end

local function vnoremap(lhs, rhs)
    noremap('v', lhs, rhs)
end

local function xnoremap(lhs, rhs)
    noremap('x', lhs, rhs)
end

-- Map Leader Key to <Space>
nnoremap('<Space>', '<NOP>')
vim.g.mapleader = ' '

-- Toggle explorer
nnoremap( '<C-e>', ':NvimTreeToggle<CR>')

-- ctrl+p to search files
nnoremap('<C-p>', ':lua require(\'telescope.builtin\').git_files()<Cr>')
nnoremap('<leader>lg', ':lua require(\'telescope.builtin\').live_grep()<Cr>')

-- Tab switch buffer
nnoremap('<TAB>', ':bnext<CR>')
nnoremap('<S-TAB>', ':bprevious<CR>')

-- Force Reload the Lua client
nnoremap('<leader>fl', ':lua vim.lsp.stop_client(vim.lsp.get_active_clients())')
-- Force Reload the buffer
nnoremap('<leader>fb', ':edit')

-- CTRL+W to close buffer
nnoremap('<C-w>', ':bd<CR>')

-- Remove Highlights 
nmap('<C-l>', ':nohl<CR>')

-- Better Window Movement
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')

-- Better Indenting
vnoremap('<', '<gv')
vnoremap('>', '>gv')

-- Move selected line / block of text with Alt + j,k 
xnoremap('<A-j>', ':move \'>+1<CR>gv-gv')
xnoremap('<A-k>', ':move \'<-2<CR>gv-gv')
