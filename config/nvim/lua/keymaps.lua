-- Reference from:
-- https://github.com/rainbowhxch/nvim/blob/f59569e874a8975a6c321b00c74e3554ff904e63/lua/mapping.lua
-- Helper Functions for remapping easily
require("plugins/telescope")
local function map(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {silent = true})
end

local function noremap(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true, silent = true})
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

local function inoremap(lhs, rhs)
    noremap('i', lhs, rhs)
end

-- Map Leader Key to <Space>
nnoremap('<Space>', '<NOP>')
vim.g.mapleader = ' '
nnoremap('<leader>', ':WhichKey \'<Space>\'<CR>')

-- Toggle explorer
nnoremap('<C-e>', ':NvimTreeToggle<CR>')

-- Command Line Mapping
vim.cmd(':command SearchFiles lua require(\'telescope.builtin\').git_files()')
vim.cmd(':command Find lua require(\'telescope.builtin\').live_grep()')
vim.cmd(':command SearchVimConfig lua require(\'plugins/telescope\').search_dotfiles()')

-- Search Dot files with Telescope
nnoremap('<leader>nvc', ':SearchVimConfig<CR>')

-- ctrl+p to search files
nnoremap('<C-p>', ':SearchFiles<CR>')
nnoremap('<leader>lg', ':Find<CR>')
-- Neogit
nnoremap('<leader>g', ':Neogit<CR>')

-- Tab switch buffer
nnoremap('<TAB>', ':bnext<CR>')
nnoremap('<S-TAB>', ':bprevious<CR>')

vim.cmd(':command ReloadLuaClient :lua vim.lsp.stop_client(vim.lsp.get_active_clients())')
-- Force Reload the Lua client
nnoremap('<leader>fl', ':ReloadLuaClient<CR>')
-- Force Reload the buffer
nnoremap('<leader>fb', ':edit')

-- Undotree
vim.cmd(':command Undotree :UndotreeShowh<CR>')
nnoremap('<leader>u', ':Undotree<CR>')

-- CTRL+W to close buffer
nnoremap('<C-w>', ':Bdelete<CR>')

-- Remove Highlights 
nmap('<C-l>', ':nohl<CR>')

-- Better Window Movement
nmap('<C-h>', ':wincmd h<CR>')
nmap('<C-j>', ':wincmd j<CR>')
nmap('<C-k>', ':wincmd k<CR>')
nmap('<C-l>', ':wincmd l<CR>')

-- alt + hjkl to resize
nnoremap('<M-h>', ':vertical resize -2<CR>')
nnoremap('<M-l>', ':vertical resize +2<CR>')

--[[ vim.cmd(':command LeftWindow :wincmd h')
vim.cmd(':command DownWindow :wincmd j')
vim.cmd(':command UpWindow :wincmd k')
vim.cmd(':command RightWindow :wincmd l')

nnoremap('<leader>h', ':LeftWindow<CR>')
nnoremap('<leader>j', ':UpWindow<CR>')
nnoremap('<leader>k', ':DownWindow<CR>')
nnoremap('<leader>l', ':RightWindow<CR>') ]]

-- Alternate way to Save 
nnoremap('<C-s>', ':w<CR>')

-- ctrl+c behaves like Esc
nnoremap('<C-c>', '<Esc>')

-- Better Indenting
vnoremap('<', '<gv')
vnoremap('>', '>gv')

-- Move selected line / block of text with Alt + j,k 
xnoremap('<A-j>', ':move \'>+1<CR>gv-gv')
xnoremap('<A-k>', ':move \'<-2<CR>gv-gv')

nnoremap('<A-j>', ':m .+1<CR>==')
nnoremap('<A-k>', ':m .-2<CR>==')

inoremap('<A-j>', '<Esc>:m .+1<CR>==gi')
inoremap('<A-k>', '<Esc>:m .-2<CR>==gi')

-- Split Window Vertically
nnoremap('<leader>v', ':vsplit<CR>')                        

